class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :age, :gender
  has_one :exercise_time
  has_one :exercise_discipline
  has_one :diet
  has_one :gender_preference
  has_one :location
  has_one :music_preference
end
