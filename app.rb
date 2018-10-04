require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
   params[:name].reverse
  end

  get '/square/:number' do 
    num = params[:number]
    (num.to_i**2).to_s
  end
  
   get '/say/:number/:phrase' do
     phrase = params[:phrase]
     num= params[:number].to_i
    phrase*num
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word]}."
  end
end