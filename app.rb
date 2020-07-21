require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      # binding.pry
      @ships = params[:pirate][:ships]
      @ships = @ships.map do |ship|
        Ship.new(ship[:name], ship[:type], ship[:booty])
      end
      erb :show
    end
  end
end
