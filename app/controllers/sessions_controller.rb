class SessionsController < ApplicationController

def new
end


def create
  user = User.find_by_email(params[:email])
  #if user exists in database AND pwd is correct
if user && user.authenticate(params[:password])
  session[:user_id] =user.id
  redirect_to '/'



else
 #if the login doesnt work or is incorrect, they are sent back to login page
 redirect_to '/'
  end 
end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end



















end
