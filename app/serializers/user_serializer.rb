class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :address
  has_many :orders

end
