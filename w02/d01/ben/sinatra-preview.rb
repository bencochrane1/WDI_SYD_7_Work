require "sinatra"
require "sinatra/reloader"

# GET /hello/ben

# params = {
#     name: "ben"
# }

post '/blog' do
    @title = params[:title].upcase
    @content = params[:content]
    erb :blog_post, layout: :layout
end

# get "/hello/:nams" do
#   "Hello #{params[:name]}"
# end

# get "/screencasts" do
#   "List of screencasts"
# end

# post '/users' do
#     "You signed up with the email address: " + "#{params[:email]}" + " and password: " + "#{params[:password]}"
# end

# get '/search/:query/:sort' do
#     end

# post '/blog' do
#     "New blog title is:" + "#{params[:title]}\n" + "Content is: " + "#{params[:content]}"
# end

# get "/" do
#   "Hello #{params[:name]}"
# end

# get "/new_blog_post" do
#     "Hello Wolrd"
# end

# get "/search/:query" do
#     "You are searching for: #{params[:query]}"
# end