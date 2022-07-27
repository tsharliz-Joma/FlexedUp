class SessionController < ApplicationController
  # before_action :fetch_user

  def new
  end

  def index
    @trainers = Trainer.all 
  end

  def new
    @trainer = Trainer.new
  end

  def show
    @trainer = Trainer.find params[:id]
  end

  def edit 
    @trainer = Trainer.find params[:id]
  end

  def update
    trainer = Trainer.find params[:id]
    trainer.update trainer_params
    redirect_to trainer 
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to new_booking_path #user.id # This will take you to session#index 
    else 
      redirect_to root_path # This will take you to users#index.html 
    end
  end

  def destroy
    session[:user_id] = nil 
    redirect_to root_path
  end

end
