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

get '/send_comments' do
mandrill = Mandrill::API.new ENV['MANDRILL_APIKEY']
message = {
  :subject=> "Message from website",
  :from=> "jacobemeier@gmail.com",
  :text=> "Test message",
  to=> [{"email"=> "jacobemeier@gmail.com",
        "name"=> "Jacob"}],
}                
sending = send_comments.messages.send message  
puts sending         
end

post '/congrats' do 
  @title = 'Congradulations!'
  @username = params['username']
  password = params['password']
  erb :congrats
end
