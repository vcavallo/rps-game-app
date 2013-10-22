require_relative 'config/environment'

class GameApp < Sinatra::Base
  get '/rps/:play' do
    move = params[:play].to_sym
    binding.pry
    this_turn = RPSGame.new(move)
    this_turn.computer_play
    this_turn.won?
    erb :rps_game
  end
end
