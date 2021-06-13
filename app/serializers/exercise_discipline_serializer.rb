class ExerciseDisciplineSerializer < ActiveModel::Serializer
  attributes :id, :cardio, :muscle_strengthening, :aerobic
  has_one :user
end
