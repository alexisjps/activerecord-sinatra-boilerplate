require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do # accueil
  "Hello world!" # des actions / method / de l'algo
  variable = "coucou toi"
end

get '/restaurants' do # mes restaurants
  # some logic c'est mon controller
  @restaurants = Restaurant.all
  erb :index
end
get "/restaurants/:id" do # accueil
  puts 'c est les params'
  puts params[:id] # ça me renvoit la valeur de la clef du hash {kiwi: '1'}
  @restaurant = Restaurant.find(params[:id])
  erb :show
end