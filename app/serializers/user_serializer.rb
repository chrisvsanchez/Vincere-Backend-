class UserSerializer < ActiveModel::Serializer
  attributes :id, :password_digest, :name, :email, :address
  has_many :orders

end
