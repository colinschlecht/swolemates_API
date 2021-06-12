class User < ApplicationRecord
  belongs_to :exercise_time
  belongs_to :exercise_discipline
  belongs_to :diet
  belongs_to :gender_preference
  belongs_to :location
  belongs_to :music_preference

  #? match request relationships
  has_many :match_requests_as_requestor, class_name: :MatchRequest
  has_many :match_requests_as_receiver, foreign_key: :friend_id, class_name: :MatchRequest

  #? matched friend relationships
  has_many :matches
  has_many :friends, through: :matches
  has_many :inverse_matches, foreign_key: :friend_id, class_name: 'Match'
  has_many :inverse_friends, through: :inverse_matches, source: :user

  def all_friends
    self.friends + self.inverse_friends
  end

  #? unmatched friend relationships
  has_many :unmatches
  has_many :unmatched_users, through: :unmatches

  has_secure_password
  validates :email, presence: true
end
