class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user, :belongs_to
end
