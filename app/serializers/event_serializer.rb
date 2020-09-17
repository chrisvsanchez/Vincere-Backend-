class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :location_name, :address, :event_time
end
