require_relative "../../config/environment"
require_relative "../models/donation.rb"
require_relative "../models/donee.rb"
require_relative "../models/user.rb"
class ApplicationController < Sinatra::Base
  
  set :views, "app/views"
  set :public, "public"
  
  get "/" do
    erb :home
<<<<<<< HEAD
  end
  
=======
<<<<<<< HEAD

 
get "/" do
    redirect to ("/sign-up")
=======
>>>>>>> 93fa3e8148a8c214a36f618b0410e99c71f2d28f
  end

>>>>>>> e463ca3092c03ea1f05a2106bc439bcfb98feadc
  get "/sign_up" do 
    erb :sign_up
  end
  
<<<<<<< HEAD
  post "/sign_up" do
=======

post "/signup" do
>>>>>>> e463ca3092c03ea1f05a2106bc439bcfb98feadc
    @user= User.new(:full_name => params[:full_name], :email => params[:email], :address => params[:address], :age => params[:age], :phone_number => params[:phone_number], :credit_card_number => params[:credit_card_number])
    @user.save
    erb :user
  end

get "/" do
  redirect to ("/donation")
  end
get "/donation" do 
  erb :donatiom
  end
post "/donatiom" do
    @user= User.new(:full_name => params[:full_name], :email => params[:email], :address => params[:address],:credit_card_number => params[:credit_card_number], 
  :project_name => params[:project_name])
    @user.save
    erb :user
  end
end