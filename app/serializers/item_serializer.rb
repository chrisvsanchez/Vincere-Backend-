class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image1, :image2, :quantity
end
