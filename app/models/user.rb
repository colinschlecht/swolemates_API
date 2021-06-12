class User < ApplicationRecord
  belongs_to :exercise_time
  belongs_to :exercise_discipline
  belongs_to :diet
  belongs_to :gender_preference
  belongs_to :location
  belongs_to :music_preference

  has_secure_password
  validates :email, :password, presence: true, uniqueness: true
end
