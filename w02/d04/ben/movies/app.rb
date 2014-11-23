require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'



get '/' do
    if params[:movie_title]
        # binding.pry
        search_term = params[:movie_title].gsub(' ', '+')
        response = HTTParty.get("http://www.omdbapi.com/?s=#{search_term}")

        if params["feelinglucky"]
            movies = JSON(response)["Search"].sample()
            search_term = movies["Title"].gsub(' ', '+')
            @movie = JSON.parse( HTTParty.get("http://www.omdbapi.com/?t=#{search_term}") )
            erb :home
        else
            @movies = JSON(response)["Search"]
            erb :movies
        end  
    else 
        erb :movies  
    end
    # binding.pry
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