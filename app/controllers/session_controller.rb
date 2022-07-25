class SessionController < ApplicationController
  def new
  end

  def create
    trainer = Trainer.find_by :email => params[:email]
    if trainer.present? && trainer.authenticate(params[:password])
      session[:trainer_id] = trainer.id
      redirect_to trainer_path trainer.id # This will take you to session#index 
    else 
      redirect_to root_path # This will take you to users#index.html 
    end
  end

  def destroy
    session[:trainer_id] = nil 
    redirect_to root_path
  end

end
