require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    @name = params[:name].reverse
  end
  
  get '/square/:num' do 
    num = params[:num].to_i
    (num ** 2).to_s
  end 
  
  get '/say/:num/:phrase' do
    final_string = ""
    (params[:num].to_i).times do 
      final_string += "#{params[:phrase]}"
    end
    final_string
  end 
  
  get 'say/:word1/:word2/:word3/:word4/:word5' do
  
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"
  end
end






