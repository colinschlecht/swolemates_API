class GenderPreferenceSerializer < ActiveModel::Serializer
  attributes :id, :male, :female, :non_binary, :none
  has_many :users
end
