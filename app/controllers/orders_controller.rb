class OrdersController < ApplicationController

    def index 
        order = Order.all 
        render json: order 
    end
    def show
        order = Order.find(params[:id])
        render json: user
    end
    def create 
        # byebug
        order = Order.create(
            address: params[:address], 
            user_id: params[:user_id], 
            total: params[:total], 
            subtotal: params[:subtotal],
            tax: params[:tax],
            confirmation: Faker::Code.asin)
            # byebugexit
            
            params[:cart].each do |item_id|
             item = Item.find(item_id)
                order.items << item 
            end 
            # byebug
        render json: order

    end
    def update 
        order = User.find(params[:id])
        order.update(order_params)
        render json: order
    end
    private 

    def order_params
        params.permit(:address, :user_id, :total, :subtotal, :tax, :confirmation)
    end
end
