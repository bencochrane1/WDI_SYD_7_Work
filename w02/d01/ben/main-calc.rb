require 'sinatra'
require 'sinatra/reloader'

get '/' do

    @first_number = params[:first_number]
    @second_number = params[:second_number]
    @operator = params[:operator]

    case @operator
    when "add"
      @answer = @first_number.to_f + @second_number.to_f
    when "subtract"
      @answer = @first_number.to_f - @second_number.to_f
    when "multiply"
      @answer = @first_number.to_f * @second_number.to_f
    when "divide"
      @answer = @first_number.to_f / @second_number.to_f
    end

    erb :calc_form
end