class TrainersController < ApplicationController
  before_action :check_for_admin

  def new # Function that holds a new trainer  
    @trainer = Trainer.new
  end

  def index
    @trainers = Trainer.all # Grabbing all the trainers 
  end

  def show
    @trainer = Trainer.find params[:id]
  end

  def create
    @trainer = Trainer.new trainer_params
    if @trainer.save
    else
      render :new
    end
  end

  private 
  def trainer_params
    params.require(:trainer).permit(:name, :speciality ,:email, :password, :password_confirmation)
  end

end