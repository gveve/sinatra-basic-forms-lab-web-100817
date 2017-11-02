require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    # binding.pry
    erb :NEW
  end

  post '/puppy' do
    @puppy = Puppy.new(params[:name],params[:breed],params[:age])
    erb :display_puppy
  end
end
