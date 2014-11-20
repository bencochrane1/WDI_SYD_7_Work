require 'sinatra'
require 'sinatra/reloader'

class Storage
    def self.storage
        @storage ||= []
    end
end

get '/json' do
    @title = "Frozen"
    @year = 2013
    erb :json

end

get '/' do
    @orders = Storage.storage
    erb :home
end

post '/order-coffee' do
    unless params[:name].empty? || params[:coffee].empty?
        Storage.storage << {
            name: params[:name],
            coffee: params[:coffee]
        }
    end
    redirect '/'
end