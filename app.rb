require 'sinatra/base'

class Rps < Sinatra::Base
get '/' do
  'Testing'
  erb :index
end

post '/names' do
  @player = params[:player]
  erb :play
end
  # start the server if ruby file executed directly
  run! if app_file == $0
end