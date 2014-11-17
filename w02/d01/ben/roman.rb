require "sinatra"
require "sinatra/reloader"


get '/roman/:number_input' do

    @real_number = params[:number_input].to_i

    @roman_numeral = "I" * @real_number

    @roman_numeral = @roman_numeral.gsub("I" * 1000, "M").
    gsub("I" * 900,  "CM").
    gsub("I" * 500,  "D").
    gsub("I" * 400,  "CD").
    gsub("I" * 100,  "C").
    gsub("I" * 90,  "XC").
    gsub("I" * 50,  "L").
    gsub("I" * 40,  "XL").
    gsub("I" * 10,  "X").
    gsub("I" * 9,    "IX").
    gsub("I" * 6,    "VI").
    gsub("I" * 5,    "V").
    gsub("I" * 4,    "IV")

    erb :roman_view, layout: :roman_layout
end