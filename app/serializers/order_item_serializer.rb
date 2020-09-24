class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :item
  has_one :order
  
end
