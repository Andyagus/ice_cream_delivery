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

post '/application-received' do
  @title = 'Application Submitted!'
  @runner_first_name = params["first_name"]
  @runner_last_name = params["last_name"]
  @runner_email = params["email"]
  @runner_phone = params["phone"]
  @runner_city = params["city"]
  "Thank you for your application.  We will get back to you shortly with next steps."
end

get '/contact' do 
  @title = 'Contact Us'
  erb :contact
end

post '/contact' do
  @contact_name = params["name"]
  @comments = params["comments"]
  
  mandrill = Mandrill::API.new ENV['MANDRILL_APIKEY']
  
  message_to_mandrill = {
    :subject=> "Message from project site",
    :from_name=> @contact_name,
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

"#{@contact_name} thank you for your message.  We will get back to you shortly."
end

post '/congrats' do 
  @title = 'Congradulations!'
  @username = params['username']
  password = params['password']
  erb :congrats
end
