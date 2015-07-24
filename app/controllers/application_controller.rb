require_relative "../../config/environment"
require_relative "../models/tweet.rb"
class ApplicationController < Sinatra::Base
  
  set :views, "app/views"
  set :public, "public"
  
  get "/" do
    
  end
get "/" do
    redirect to ("/sign-up")
  end
  get "/sign-up" do 
    erb :sign_up
  end
  post "/signup" do
    @user= User.new(:full_name => params[:full_name], :email => params[:email], :address => params[:address], :age => params[:age], :phone_number => params[:phone_number], :credit_card_number => params[:credit_card_number])
    @user.save
    erb :user
  end
  
end