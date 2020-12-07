class SignUpForEventsController < ApplicationController

    def index 
        orders = SignUpForEvent.all 
        render json: orders 
    end
    def show
        orderitem = SignUpForEvent.find(params[:id])
        render json: orderitem
    end
    def create
    
        event = Event.find(params[:event_id])
        decoded_token = JWT.decode(params[:user_id], "so_secret", true, {algorthim: 'HS256'})
        user_id = decoded_token[0]["user_id"]
     
        user = User.find(user_id)
        if event.users.find_by(id: user_id)
        
            render json: {status: "error", code: 3000, message:"You've already registered for the #{event.name}. Check your account for details"}
        else
          
            sign = SignUpForEvent.create(user_id: user_id, event_id: params[:event_id])

            render json: user
        end
    end


    private 

    def SignUpForEvent_params
    params.permit(:event_id,:user_id)
    end
end
