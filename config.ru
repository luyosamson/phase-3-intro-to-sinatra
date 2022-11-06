require 'sinatra'

class App < Sinatra::Base

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  get '/potato' do
    "<p>I am the best student in software development class here in Moringa School</p>"
  end


  #Sinatra Sending back response in HTML
  get '/dice' do
    dice_roll=rand(1..6)
    "<h2>You rolled #{dice_roll}</h2>"
  end



#Returning back JSON data
set:default_content_type, 'application/json'
  get '/diceroll' do
  dice_roll=rand(1..10)
  {rollDice:dice_roll}.to_json
  end  

# get '/sum/:num1/:num2' do
#   num1=10
#   num2=20
#     num1=params[:num1].to_i
#     num2=params[:num2].to_i
#     sum=num1+num2
#     {result:sum}.to_json
#   end

  get '/add/1/2' do
    sum = 1 + 2
    { result: sum }.to_json
  end

end

run App
