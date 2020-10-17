class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users
    end

    def show 
        user = User.find(params[:id])
        render json: user
    end

    def create 
        user = User.create(
         email: params[:email],
         name: params[:name],
         address: params[:address],
         password: params[:password]
        )
        if user.valid?
            render json: user, status: :created
        else
            render json: {message: user.error.full_messages},status: :bad_request 
        end
    end
    def login
        # byebug
       usery = User.find_by(email: params[:email])
       if usery && usery.authenticate(params[:password])
            render json: usery
        else
            render json: {message: "Invalid username or password"}, status: :unauthorized 
        end
    end
    def autologin
         loggedInUser = User.find_by(id: params[:id])
         if loggedInUser
            render json: loggedInUser
         else 
            render json: {message: "Not logged in"}, status: :unauthorized
         end
    end
    def update 
        user = User.find(params[:id])
        user.update(user_params)
 
        render json: user
    end

    def destroy 

    end
    
    private 
    def user_params 
        params.permit(:name, :email)
    end
end
