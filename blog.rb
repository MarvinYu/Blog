require 'rubygems'
require 'sinatra'

set :public, Proc.new { File.join(root, "static") }

# This before filter ensures that your pages are only ever served 
# once (per deploy) by Sinatra, and then by Varnish after that
#before do
#  response.headers['Cache-Control'] = 'public, max-age=31557600' # 1 year
#end

# Redirect traffic for any domain to martin.kleppmann.com, and catch
# requests for old yes-no-cancel.co.uk pages
before do
  puts "HTTP_HOST = #{request.env['HTTP_HOST'].inspect}"
  if !%w(martin.kleppmann.com localhost localhost:9292).include?(request.env['HTTP_HOST']) &&
      request.path =~ /\A\/[a-zA-Z0-9_!\$%&\(\)\*\+,\-\.\/:;<=>\?@\[\]\^\{\}\|~]*\Z/
    new_path = request.path.gsub %r{\A(/\d+/\d+/\d+/.*)/\z}, '\1.html'
    halt 301, {"Location" => "http://martin.kleppmann.com#{new_path}"}, <<-HTML
    <h1>Moved Permanently</h1>
    <p>This document has moved <a href="http://martin.kleppmann.com#{new_path}">here</a>.</p>
    HTML
  end
end

get '/test' do
  puts "test reqested"
  request.env.inspect
end

get '/' do
  File.open('static/index.html', &:read)
end
