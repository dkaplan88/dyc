class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.create(params[:user])
    session[:uid] = @user.id
    
    redirect_to root_url, notice: "Welcome!"    
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
    User.find(params[:id]).destroy
    redirect_to root_url, notice: "GoodBye"
  end
  
end
