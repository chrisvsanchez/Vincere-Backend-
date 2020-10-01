class OrderItemsController < ApplicationController
   
    
    def index 
        orderItems = OrderItem.all 
        render json: orderItems
    end
    def show
        orderItem = OrderItem.find(params[:id])
        render json: orderItem
    end
    def create 
        # byebug
        orderItem = OrderItem.create(orderItems_params)
        # byebug
        render json: orderItem
    
    end
    private 
    def orderItems_params
        params.permit(:order_id, :item_id)
    end
end
