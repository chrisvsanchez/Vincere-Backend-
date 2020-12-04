class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :address
  has_many :orders

end
