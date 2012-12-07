require 'sinatra'
require 'sass'

get '/css/:name.css' do |name|
  content_type 'text/css', charset: 'utf-8'
  scss name.to_sym, layout: false, views: "#{settings.root}/public/css"
end

get '/' { erb :index }
get '/about' { erb :about }
