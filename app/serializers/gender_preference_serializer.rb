class GenderPreferenceSerializer < ActiveModel::Serializer
  attributes :id, :male, :female, :non_binary, :none
end