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
  @title = 'Congratulations!'
  @username = params['username']
  password = params['password']
  erb :congrats
end


post '/order-success' do 
  @title = 'Order Success!'
  @username = params['name_existing']
  @password = params['password_existing']
   "Thanks for your order #{@username}"
end

post '/order-signup' do 
  @title = 'Order Success!'
  @guest_firstname = params['firstname_guest']
  @guest_lastname = params['lastname_guest']
  @guest_password = params['email_guest']
  @guest_phone = params['phone_guest']
  @guest_password = params['password_guest']
  @guest_passwordconfirm = params['confirmpassword_guest']
    "Thanks for signing up! #{@guest_firstname}"
end
