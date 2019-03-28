require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
  end

  get '/' do
    session[:item] = params[:item]
    @session = session
    erb :index
  end

  post '/checkout' do
    @item = params[:item]
    erb :html
  end
end
