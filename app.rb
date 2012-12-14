require 'sinatra'
require 'sass'
require 'yaml'

before do
  response.headers['X-UA-Compatible'] = 'IE=edge,chrome=1'
  @data = YAML.load_file("data.yml")
end

get '/css/:name.css' do |name|
  content_type 'text/css', charset: 'utf-8'
  scss name.to_sym, layout: false, views: "#{settings.root}/public/css"
end

get '/' do
  @recommendations = @data['recommendations'].to_a.shuffle
  @recommendation  = @recommendations[0]
  erb :index
end

get '/:name' do
  erb params[:name].to_sym
end