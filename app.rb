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

post '/contact' do
  @name = params["name"]
  @comments = params["comments"]
  
  mandrill = Mandrill::API.new ENV['MANDRILL_APIKEY']
  
  message_to_mandrill = {
    :subject=> "Message from project site",
    :from_name=> @name,
    :text=> @comments,
    :to=> [{
      :email=> "jacobemeier@gmail.com",
      :name=> "Jacob Meier"
    }],
    :html=> "<html>test html string</html>",
    :from_email=> "testsite@randopc.com"
  }
  sending = mandrill.messages.send message_to_mandrill
  puts sending

"#{@name} thank you for your message.  We will get back to you shortly."
end

post '/congrats' do 
  @title = 'Congradulations!'
  @username = params['username']
  password = params['password']
  erb :congrats
end
