class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def index
        @user = User.all
    end

end
