require 'sinatra'
require 'sinatra/reloader'




get '/' do
    erb :main, layout: :layout
end


get '/about' do
    erb :about, layout: :layout
end


get '/contact' do
    erb :contact, layout: :layout
end


get '/students' do
    erb :student, layout: :layout
end

get '/students/:name' do

    @student_data = {
        "ben" => {
            name: "Ben Cochrane",
            skills: ["Ruby","iOS", "Angular"],
            tagline: "Heya Garn Matey"
        },
       "phil" => {
            name: "Phil Hancock",
            skills: ["Javascript","Swift"],
            tagline: "Hi there"
        }        
    }

    @student_name = params[:name]
    @student_skills = @student_data[@student_name][:skills]
    @student_tagline = @student_data[@student_name][:tagline]
    erb :student, layout: :layout
end


# <% @todo_array.each do |t| %>
#  <%= puts t %>
# <% end %>