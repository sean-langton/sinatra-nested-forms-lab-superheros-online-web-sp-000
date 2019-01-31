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
      @hero_1_power = params[:team][:heroes][0][:motto]
      @hero_1_bio = params[:team][:heroes][0][:bio]
      @hero_2_name = params[:team][:heroes][1][:name]
      @hero_2_power = params[:team][:heroes][1][:motto]
      @hero_2_bio = params[:team][:heroes][1][:bio]
      @hero_3_name = params[:team][:heroes][2][:name]
      @hero_3_power = params[:team][:heroes][2][:motto]
      @hero_3_bio = params[:team][:heroes][2][:bio]

      erb :super_hero
    end

end
