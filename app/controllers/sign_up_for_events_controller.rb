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
        sign = SignUpForEvent.create(user_id: params[:user_id], event_id: params[:event_id])
# if sign.valid then run likes 14 and 15 else catch error, you already signed up for this event
        user = User.find(params[:user_id])
        render json: user
    end


    private 

    def SignUpForEvent_params
    params.permit(:event_id,:user_id)
    end
end
