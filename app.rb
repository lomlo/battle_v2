require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/pre_game' do
    session[:name1] = Player.new(params[:name1])
    session[:name2] = Player.new(params[:name2])
    redirect '/game'
  end

  get '/game' do
    @player1 = session[:name1]
    @player2 = session[:name2]
    @player1_name = session[:name1].name
    @player2_name = session[:name2].name
    @player2_hp = session[:name2].hp
    erb(:game)
  end

  post '/attack' do
    @player1 = session[:name1]
    @player2 = session[:name2]
    @player1.attack(@player2)
    redirect '/game'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
