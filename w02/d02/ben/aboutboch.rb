require 'sinatra'
require 'sinatra/reloader'




get '/' do

    @student_data = {
        "ben" => {
            name: "Ben Cochrane",
            skills: ["Rails","Node", "Angular"],
            tagline: "Heya Garn Matey"
        },
       "phil" => {
            name: "Phil Hancock",
            skills: ["Javascript","Swift"],
            tagline: "Hi there"
        },
       "michael" => {
            name: "Michael Foody",
            skills: ["Javascript","iOS"],
            tagline: "Heya"
        },
       "alan" => {
            name: "Alan Ng",
            skills: ["Ruby","Swift"],
            tagline: "What's up"
        },
       "eugene" => {
            name: "Eugene Lai",
            skills: ["Github","Rails"],
            tagline: "Sup"
        },
       "ryan" => {
            name: "Ryan Pauley",
            skills: ["Python","Javascript"],
            tagline: "Heya there"
        },
       "joel" => {
            name: "joel hampton",
            skills: ["AWS","Java"],
            tagline: "What up!"
        },
       "vito" => {
            name: "vito belgiorno-zegna",
            skills: ["Ruby","Javascript","Assembler"],
            tagline: "What up!"
        },
       "jonathon" => {
            name: "Jonathon Hooker",
            skills: ["AWS","Wordpress"],
            tagline: "Shup in ya face!"
        },
       "frederick" => {
            name: "Frederick Wong",
            skills: ["Ruby","Scala"],
            tagline: "Hey hey!"
        },
       "chris" => {
            name: "Chris Ma",
            skills: ["Node","Angular"],
            tagline: "Suppity sup!"
        }
    }

    def get_key(hash)
        keys = []
        hash.each {|k,v| keys << k }
        keys
    end

    @student_names = get_key(@student_data)
    # @student_name = @student_data[:name]
    # @student_skills = @student_data[@student_name][:skills]
    # @student_tagline = @student_data[@student_name][:tagline]

    erb :main, layout: :layout
end


get '/about' do
    erb :about, layout: :layout
end


get '/contact' do
    erb :contact, layout: :layout
end

get '/students/:name' do

    @student_data = {
        "ben" => {
            name: "Ben Cochrane",
            skills: ["Rails","Node", "Angular"],
            tagline: "Heya Garn Matey"
        },
       "phil" => {
            name: "Phil Hancock",
            skills: ["Javascript","Swift"],
            tagline: "Hi there"
        },
       "michael" => {
            name: "Michael Foody",
            skills: ["Javascript","iOS"],
            tagline: "Heya"
        },
       "alan" => {
            name: "Alan Ng",
            skills: ["Ruby","Swift"],
            tagline: "What's up"
        },
       "eugene" => {
            name: "Eugene Lai",
            skills: ["Github","Rails"],
            tagline: "Sup"
        },
       "ryan" => {
            name: "Ryan Pauley",
            skills: ["Python","Javascript"],
            tagline: "Heya there"
        },
       "joel" => {
            name: "joel hampton",
            skills: ["AWS","Java"],
            tagline: "What up!"
        },
       "vito" => {
            name: "vito belgiorno-zegna",
            skills: ["Ruby","Javascript","Assembler"],
            tagline: "What up!"
        },
       "jonathon" => {
            name: "Jonathon Hooker",
            skills: ["AWS","Wordpress"],
            tagline: "Shup in ya face!"
        },
       "frederick" => {
            name: "Frederick Wong",
            skills: ["Ruby","Scala"],
            tagline: "Hey hey!"
        },
       "chris" => {
            name: "Chris Ma",
            skills: ["Node","Angular"],
            tagline: "Suppity sup!"
        }  
    }

    def get_key(hash)
        keys = []
        hash.each {|k,v| keys << k }
        keys
    end

    @student_names = get_key(@student_data)

    @student_name = params[:name]
    @student_skills = @student_data[@student_name][:skills]
    @student_tagline = @student_data[@student_name][:tagline]
    erb :student, layout: :layout
end


# <% @todo_array.each do |t| %>
#  <%= puts t %>
# <% end %>