class UserSerializer < ActiveModel::Serializer
  attributes :id, :password_digest, :name, :email, :address, :events
  has_many :orders

end
