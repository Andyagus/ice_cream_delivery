require 'sinatra'
require 'mandrill'


get '/home' do 
  @title = 'Home'
  erb :home
end

get '/order' do 
  @title = 'Order Now'
  erb :order
end

get '/runner' do 
  @title = 'Become A Runner'
  erb :runner
end

get '/contact' do 
  @title = 'Contact Us'
  erb :contact
end

post '/congrats' do 
  @title = 'Congradulations!'
  @username = params['username']
  password = params['password']
  erb :congrats
end

