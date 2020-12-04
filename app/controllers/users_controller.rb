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
        byebug
        user = User.create(
         email: params[:email],
         name: params[:name],
         address: params[:address],
         password: params[:password],
        )
        if user.valid?
    
            render json: user, status: :created
        else
                render json: {message: user.errors.full_messages}, status: :bad_request 
        end
    end

    def login 
        # byebug
        user = User.find_by(email: params[:email])
        
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: {message: "wrong username or password"}, status: :unauthorized 
        end
    end
    
    def autologin
        user = User.find_by(id: params[:id])
        if user
            render json: user 
        else
            render json: {message: "Not logged in}, status: :unauthorized"}
            end
        end
    def update 
        user = User.find(id: params[:id])
        user.update(user_params)
        render json: user
    end



 
  
end
