class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def show
        @user = User.find_by(id: params["id"])
    end
    
    def new
    end
    
    def create
        user = User.new
        user.name = params["name"]
        user.email = params["email"]
        user.save
        redirect_to "/users/#{user.id}"
    end
    
    def edit
        @user = User.find_by(id: params["id"])
    end
    
    def update
        user = User.find_by(id: params["id"])
        user.name = params["name"]
        user.email = params["email"]
        user.save
        redirect_to "/users/#{user.id}"
    end
    
    def destroy
        user = User.find_by(id: params["id"])
        user.destroy
        redirect_to "/users"
    end
end
