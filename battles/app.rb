require 'sinatra/base'

require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $Player1 = Player.new(params[:Player1_name])
    $Player2 = Player.new(params[:Player2_name])
    redirect '/play'
  end

  get '/play' do
    @Player1_name = $Player1.name
    @Player2_name = $Player2.name
    erb(:play)
  end

  post '/attack' do
    @Player1_name = $Player1.name
    @Player2_name = $Player2.name
    $Player2.player_attacked
    @Player2_hp = $Player2.hp
    erb(:attack)
  end

end
