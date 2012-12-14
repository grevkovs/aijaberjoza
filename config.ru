require 'app'
require 'rack-rewrite'

DOMAIN = 'www.aijaberjoza.lv'

# Redirect to the www version of the domain in production
use Rack::Rewrite do
  r301 /.*/,  Proc.new {|path, rack_env| "http://#{rack_env['SERVER_NAME'].gsub(/www\./i, '') }#{path}" },
    :if => Proc.new {|rack_env| rack_env['SERVER_NAME'] =~ /www\./i}
end