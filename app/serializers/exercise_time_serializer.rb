class ExerciseTimeSerializer < ActiveModel::Serializer
  attributes :id, :early_morning, :morning, :afternoon, :early_evening, :late_evening, :late_night
  has_many :users
end
