class SignUpForEventsController < ApplicationController

    def index 
        orders = Order.all 
        render json: order 
    end
    def show
        orderitem = Order.find(params[:id])
        render json: orderitem
    end
end
