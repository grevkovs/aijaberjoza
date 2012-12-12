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

get '/about' do
  erb :about
end

get '/calendar' do
  erb :calendar
end

get '/game' do
  erb :game
end

get '/practice' do
  erb :practice
end

get '/yoga' do
  erb :yoga
end
