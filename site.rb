require 'sinatra'
require 'sass'

get '/css/:name.css' do |name|
  # require './views/scss/bourbon/lib/bourbon.rb'
  content_type 'text/css', :charset => 'utf-8'
  scss name.to_sym, layout: false, views: "#{settings.root}/public/css"
end

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

