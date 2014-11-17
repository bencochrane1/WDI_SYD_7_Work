require 'sinatra'

get '/' do
    erb :form
end

post '/posts' do
    @title = params[:title]
    @content = params[:content]
    @author = params[:author]
    erb :post
end