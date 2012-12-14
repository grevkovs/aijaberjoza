require 'app'
require 'rack/rewrite'

run Sinatra::Application

use Rack::Rewrite do
  # rewrite rules here
  r301 %r{.*}, 'http://www.aijaberjoza.lv$&', 
    if: Proc.new { |rack_env| rack_env['SERVER_NAME'] != 'www.aijaberjoza.lv' }
end