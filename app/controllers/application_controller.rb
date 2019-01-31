require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/teams" do
      erb :team
    end

    post "/teams" do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @hero_1_name = params[:team][:heroes][0][:name]

      erb :super_hero
    end

end
