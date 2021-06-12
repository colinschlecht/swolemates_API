class Unmatch < ApplicationRecord
  belongs_to :user
  belongs_to :unmatched_user, foreign_key: :friend_id, class_name: 'User'
end
