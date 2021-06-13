class LocationSerializer < ActiveModel::Serializer
  attributes :id, :latitude, :longitude
  has_one :user
end
