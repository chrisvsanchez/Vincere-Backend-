class ChargesController < ApplicationController
require 'stripe'
require 'dotenv'
Dotenv.load
    def create
        Stripe.api_key = ENV['STRIPE_SEC']
       token = params[:charge][:token]
       price = params[:price]
       charge = Stripe::Charge.create({
           amount: price,
           currency: 'usd',
           source: token,
           description: 'Test Charge!'
       })
 
       render json: charge
    end
end
