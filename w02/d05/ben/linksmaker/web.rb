require 'sinatra'
require 'sinatra/reloader'
require 'data_mapper'
require 'json'
require 'pry'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/todolist.db")
  class Item
      include DataMapper::Resource
      property :id, Serial
      property :title, Text, :required => true
      property :url, Text, :required => true
      property :created, DateTime
  end
DataMapper.finalize.auto_upgrade!


get '/' do
    @items = Item.all
    redirect '/new' if @items.empty?
    erb :index
end

get '/new' do
    @title = "Add a new Title and URL"
    erb :new
end

post '/new' do
    Item.create(:title => params[:title], :url => params[:url])
    redirect '/'
end


get '/delete/:id' do
    @item = Item.first(:id => params[:id])
    erb :delete
end

delete '/delete/:id' do
    if params.has_key?("ok")
        item = Item.first(:id => params[:id])
        item.destroy
        redirect '/'
    else
        redirect '/'
    end
end





