require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/pre_game' do
    session[:game] = Game.new(Player.new(params[:name1]), Player.new(params[:name2]))
    redirect '/game'
  end

  get '/game' do
    @player1 = session[:game].player1
    @player2 = session[:game].player2
    @player1_name = @player1.name
    @player2_name = @player2.name
    @player1_turn = @player1.turn
    @player2_turn = @player2.turn
    @player1_hp = @player1.hp
    @player2_hp = @player2.hp
    erb(:game)
  end

  post '/attack' do
    @player1 = session[:game].player1
    @player2 = session[:game].player2
    @game = session[:game]
    if @player1.turn
      @game.attack(@player2)
    else
      @game.attack(@player1)
    end
    redirect '/game'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
