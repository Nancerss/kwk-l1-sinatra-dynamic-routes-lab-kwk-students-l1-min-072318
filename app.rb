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
    num = params[:num].to_i
    @phrase = params[:phrase]
    (repeat @phrase num times)
  end
  
  # get 'say/:word1/:word2/:word3/:word4/:word5' do 
  #   @word1 = params[:word1]
  #   @word2 = params[:word2]
  #   @word3 = params[:word3]
  #   @word4 = params[:word4]
  #   @word5 = params[:word5]
  #   # (word1 word2 word3 word4 word5)
  # end
end





