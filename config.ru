require 'app'
require 'rack/rewrite'

run Sinatra::Application

use Rack::Rewrite do
  # rewrite rules here
  r301 %r{.*}, 'http://aijaberjoza.lv$&', 
    if: Proc.new { |rack_env| rack_env['SERVER_NAME'] != 'aijaberjoza.lv' }
end