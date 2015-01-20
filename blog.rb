# Lo Tek URL shortener
SHORTLINKS = {
  winter: '/2015/01/24/stream-processing-at-dev-winter.html'
}

require 'rubygems'
require 'sinatra'

# This before filter ensures that your pages are only ever served 
# once (per deploy) by Sinatra, and then by Varnish after that
#before do
#  response.headers['Cache-Control'] = 'public, max-age=31557600' # 1 year
#end

# Redirect traffic for any domain to martin.kleppmann.com, and catch
# requests for old yes-no-cancel.co.uk pages
before do
  if !%w(martin.kleppmann.com localhost localhost:9292).include?(request.env['HTTP_HOST']) &&
      request.path =~ /\A\/[a-zA-Z0-9_!\$%&\(\)\*\+,\-\.\/:;<=>\?@\[\]\^\{\}\|~]*\Z/
    new_path = request.path.gsub %r{\A(/\d+/\d+/\d+/.*)/\z}, '\1.html'
    halt 301, {"Location" => "http://martin.kleppmann.com#{new_path}"}, <<-HTML
    <h1>Moved Permanently</h1>
    <p>This document has moved <a href="http://martin.kleppmann.com#{new_path}">here</a>.</p>
    HTML
  end
end

get '/' do
  send_file 'static/index.html'
end

# static files route (reimplemented outside of Sinatra to make host-dependent redirect work)
get(/.*[^\/]$/) do
  public_dir = File.expand_path('static')
  path = File.expand_path(public_dir + unescape(request.path_info))
  pass if path[0, public_dir.length] != public_dir

  unless File.file?(path)
    _, longlink = SHORTLINKS.detect{|short, long| request.path_info =~ %r{^/#{short}} }
    if longlink
      new_url = "http://martin.kleppmann.com#{longlink}"
    elsif request.path_info =~ %r{^/2010/12/21/.*}
      new_url = "http://martin.kleppmann.com/2010/12/21/having-a-launched-product-is-hard.html"
    elsif request.path_info =~ %r{^/ssh-keys\.html}
      new_url = "http://martin.kleppmann.com/2013/05/24/improving-security-of-ssh-private-keys.html"
    end

    if new_url
      halt 301, {"Location" => new_url}, <<-HTML
        <h1>Moved Permanently</h1>
        <p>This document has moved <a href="#{new_url}">here</a>.</p>
      HTML
    else
      pass
    end
  end

  send_file path, :disposition => nil
end
