class User < ApplicationRecord
    has_many :orders 
    has_many :order_items, through: :orders
    has_many :sign_up_for_events 
    has_many :events, through: :sign_up_for_events
    has_secure_password 
    validates :email, uniqueness: {case_sensitive: false}
 
end
