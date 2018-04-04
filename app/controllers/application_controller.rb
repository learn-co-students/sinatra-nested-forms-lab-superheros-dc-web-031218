require 'sinatra/base'
# require_all "../models/"
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do

        @team = params[:team][:name]
        @motto = params[:team][:motto]


        @heroes = params[:heroes]

        params[:heroes].each do |details|
          # binding.pry
          Superhero.new(details)
        end

        @heroobjects = Superhero.all
        print @heroobjects.length

      erb :team
    end

end
