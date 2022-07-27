class UserController < ApplicationController
    before_action :fetch_user
 
    def new
    end

    def index
        @users = User.all 
        @trainers = Trainer.all # Grabbing all the trainers 
    end

    def edit
        @user = User.find params[:id]
        @trainer = Trainer.find params[:id]
    end

    def create

        @trainer = Trainer.new trainer_params
        if @trainer.save
        else
        render :new
        end
        user = User.find_by :email => params[:email]
        if user.present? && user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect_to users_path
        else 
          redirect_to root_path
        end
      end

    def show
        user = User.find params[:id]
        @trainer = Trainer.find params[:id]
    end

    def update
        user = User.find params[:id]
        user.update user_params
        redirect_user 
    end

    def destroy
        user = User.find params[:id]
        user.destroy
        redirect_to users_path
    end

    private
    def user_params
        params.require(:user).permit(:name, :image, :email, :favourite, :password)
    end
end
