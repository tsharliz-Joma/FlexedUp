class UsersController < ApplicationController
   # before_action :fetch_trainer
    before_action :fetch_user
    before_action :check_for_login
 
    def new
    end

    def index
        @users = User.all 
    end

    def edit
        @user = User.find params[:id]
    end

    def show
        user = User.find params[:id]
    end

    def update
        user = User.find params[:id]
        user.update user_params
        redirect_user 
    end

    def destroy
        user = User.find[:id]
        user.destroy
        redirect_to users_path
    end

    private
    def user_params
        params.require(:user).permit(:name, :image, :email, :favourite, :password)
    end
end
