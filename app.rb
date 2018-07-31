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
  
  
  
  
  

end





