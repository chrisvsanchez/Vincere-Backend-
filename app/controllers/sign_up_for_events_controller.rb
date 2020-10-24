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
        user = User.find(params[:user_id])
        if event.users.find_by(id:[params[:user_id]])
        
            render json: {status: "error", code: 3000, message:"You've already registered for the #{event.name}. Check your account for details"}
        else
            byebug
            sign = SignUpForEvent.create(user_id: params[:user_id], event_id: params[:event_id])

            render json: user
        end
    end


    private 

    def SignUpForEvent_params
    params.permit(:event_id,:user_id)
    end
end
