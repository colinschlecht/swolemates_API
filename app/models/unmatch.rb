class Unmatch < ApplicationRecord
  belongs_to :user
  belongs_to :unmached_user, class_name: 'User'
end
