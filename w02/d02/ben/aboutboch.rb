require 'sinatra'
require 'sinatra/reloader'
require 'pony'


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

    erb :main, layout: :layout
end


get '/about' do
    erb :about, layout: :layout
end


get '/contact' do
    erb :contact, layout: :layout
end

post '/contact' do

        name = params[:name]
        mail = params[:mail]
        body = params[:body]


        Pony.mail({
          :to => 'bencochrane1@me.com',
          :from => "bochrane@gmail.com",
          :subject => "You're enquiry from WDI7",
          :body => body,
          :via => :smtp,
          :via_options => {
            :address              => 'smtp.mandrillapp.com',
            :port                 => '587',
            # :enable_starttls_auto => true,
            :user_name            => 'bochrane@gmail.com',
            :password             => 'zkoC7DIrVEGYbEWRVZDY4g',
            :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
            :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
          }
        })

        redirect '/contact'


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
