class UserSessionController < ApplicationController
 before_action :check_for_login  #for sum reason when i do this , the login wont work , it executes my else statement in application.html
 # before_action :fetch_trainer
  before_action :fetch_user

  def new
  end
  

  def index
    @user = User.all
  end

  def edit
    @user = User.find params[:id]
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to users_path
    else 
      redirect_to root_path
    end
  end

  # I had another show function here and removed it just now

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :favourite, :password, :password_confirmation)
  end

end
