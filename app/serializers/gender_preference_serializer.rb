class GenderPreferenceSerializer < ActiveModel::Serializer
  attributes :id, :male, :female, :"non-binary", :none
end
