require_relative 'config/environment'

class GameApp < Sinatra::Base
  get '/rps/:play' do
    erb :rps_game
  end
end
