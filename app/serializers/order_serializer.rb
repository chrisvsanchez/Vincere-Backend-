class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :total, :subtotal, :tax, :confirmation, :created_at, :address, :items
end