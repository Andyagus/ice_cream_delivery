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

get '/send-comments' do
# mandrill = Mandrill::API.new ENV['MANDRILL_APIKEY']
# message = {
#   to: [{"type" => "to",
#         "email" => "jacobemeier@gmail.com",
#         "name" => "Jacob"}],
#   subject:
#   from: 'jacobemeier@gmail.com'
#   text:  @themessage}                 }
# puts mandrill.message.send(message)            
end

post '/congrats' do 
  @title = 'Congradulations!'
  @username = params['username']
  password = params['password']
  erb :congrats
end
