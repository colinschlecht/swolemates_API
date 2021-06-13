class LocationSerializer < ActiveModel::Serializer
  attributes :id, :latitude, :longitude
  has_many :users
end
