require 'sinatra'
require 'sass'

get '/css/:name.css' do |name|
  content_type 'text/css', charset: 'utf-8'
  scss name.to_sym, layout: false, views: "#{settings.root}/public/css"
end

before do
  response.headers['X-UA-Compatible'] = 'IE=edge,chrome=1'
end

get '/' do
  erb :index
end

get '/:name' do
  erb params[:name].to_sym
end