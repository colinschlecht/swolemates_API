class DietSerializer < ActiveModel::Serializer
  attributes :id, :keto, :low_carb, :vegan, :vegetarian, :pescatarian, :alkaline, :raw_food, :intermittent_fasting, :paleo, :clean_eating, :mediterranean
end
