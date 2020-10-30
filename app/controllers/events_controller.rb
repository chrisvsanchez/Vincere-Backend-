class EventsController < ApplicationController
skip_before_action :authenticate, only: [:index, :show]
    def index 
        events = Event.all 
        render json: events
    end

    def show 
        event = Event.find(params[:id])
        render json:user
    end

end
