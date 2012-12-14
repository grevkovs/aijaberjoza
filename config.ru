require 'app'
require 'rack/rewrite'

use Rack::Rewrite do
  r301 %r{.*}, 'http://www.aijaberjoza.lv$&', 
    if: Proc.new { |rack_env| rack_env['SERVER_NAME'] != 'aijaberjoza.lv' }
end

run Sinatra::Application