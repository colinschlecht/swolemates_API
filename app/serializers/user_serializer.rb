class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :age, :gender, :bio
  has_one :exercise_time
  has_one :exercise_discipline
  has_one :diet
  has_one :gender_preference
  has_one :location
  has_one :music_preference

  has_many :all_friends
  has_many :unmatched_users
  has_many :match_requests_as_receiver
end
