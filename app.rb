require 'sinatra'
require 'sinatra/activerecord'
require 'hello_sign'


configure do
  set :views, 'app/views'

  HelloSign.configure do |config|
    config.api_key = ENV['api_key']
  end
end

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
end

get '/' do
  @title = "Hello World"
  erb :index
end

post '/sign/test' do
end
