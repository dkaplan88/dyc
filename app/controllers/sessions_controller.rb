class SessionsController < ApplicationController

  def new
  end  

  def create
    user = User.find_by_email(params[:email])
    if user
      if user.authenticate(params[:password])
        session[:uid] = user.id
        redirect_to root_url, notice: "Logged In!"
      else
        redirect_to root_url, notice: "Failed Email or Password"
      end
    else
      redirect_to root_url, notice: "Bad Email"
    end
  end
  
  def destroy
    session[:uid] = nil
    redirect_to root_url, notice: "Logged Out!"
  end
end
