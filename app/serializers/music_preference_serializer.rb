class MusicPreferenceSerializer < ActiveModel::Serializer
  attributes :id, :rock, :techno, :rap, :country, :pop, :alternative, :classical, :funk, :latin, :jazz, :none
end
