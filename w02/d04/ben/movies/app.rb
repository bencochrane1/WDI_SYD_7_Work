require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'


get '/' do
    if params[:movie_title]
        search_term = params[:movie_title].gsub(' ', '+')
        response = HTTParty.get("http://www.omdbapi.com/?s=#{search_term}")
        @movies = JSON(response)["Search"]
    end
    erb :movies
end

get '/movies/:movie_title' do
    if params[:movie_title]
        search_term = params[:movie_title].gsub(' ', '+')
        response = HTTParty.get("http://www.omdbapi.com/?t=#{search_term}")
        @movie = JSON(response)
    end
    erb :home
end



# get '/' do
#     if params[:movie_title]
#         search_term = params[:movie_title].gsub(' ', '+')
#         response = HTTParty.get("http://www.omdbapi.com/?s=#{search_term}")
#         @movie = JSON(response)
#     end
#     erb :home
# end

# Httparty.get("http://www.omdbapi.com/?s=#{search_term})

# search_hash = JSON(response)
# single_response = HTTParty.get("http://ombdapi.com?t=#{search_hash["Search"]["Title"].gsub(' ', '+')}")

# frozen_planet = JSON(single_response)