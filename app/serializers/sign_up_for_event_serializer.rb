class SignUpForEventSerializer < ActiveModel::Serializer
  attributes :id
  has_one :event
  has_one :user
  validates :user, uniqueness: true
end
