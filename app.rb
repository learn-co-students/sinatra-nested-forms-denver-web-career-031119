require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @new_pirate = Pirate.new(params["pirate"])

      ##need to get the ships out of the params and into unique instances of eachother
      params["pirate"]["ships"].each do |ship|
        Ship.new(ship)
      end
      @new_ships= Ships.all

      erb :'pirates/show'
    end
  end
end
