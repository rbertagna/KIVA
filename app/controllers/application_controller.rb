require_relative "../../config/environment"
require_relative "../models/donation.rb"
require_relative "../models/donee.rb"
require_relative "../models/user.rb"
class ApplicationController < Sinatra::Base
  
  set :views, "app/views"
  set :public, "public"
  
  get "/" do
    erb :home

  end

 
get "/" do
    redirect to ("/sign-up")
  end


  get "/sign_up" do 
    erb :sign_up
  end
  

post "/signup" do

    @user= User.new(:full_name => params[:full_name], :email => params[:email], :address => params[:address], :age => params[:age], :phone_number => params[:phone_number], :credit_card_number => params[:credit_card_number])
    @user.save
    erb :user
  end

  get "/donee" do
    erb :entrepreneurs
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