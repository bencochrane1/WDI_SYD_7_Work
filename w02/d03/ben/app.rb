require 'sinatra'
require 'sinatra/reloader'
require 'pry'




get '/' do
    erb :home
end

post '/buy-product' do
    binding.pry
    params[:price]
    params[:qty]

    erb :home
end