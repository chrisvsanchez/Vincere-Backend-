class Event < ApplicationRecord
    has_many :sign_up_for_events 
    has_many :users, through: :sign_up_for_events
end
