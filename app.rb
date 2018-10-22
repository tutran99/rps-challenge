require 'sinatra/base'

class Rps < Sinatra::Base
enable :sessions
get '/' do
  erb :index
end

post '/names' do
  session[:player] = params[:player]
  redirect '/play'
end

get '/play' do
  @player = session[:player]
  @selection = session[:selection]
  erb :play
end

post '/play' do
  session[:selection] = params[:selection]
  redirect '/play'
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end