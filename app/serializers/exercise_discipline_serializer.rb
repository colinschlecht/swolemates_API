class ExerciseDisciplineSerializer < ActiveModel::Serializer
  attributes :id, :cardio, :muscle_strengthening, :aerobic
  has_many :users
end
