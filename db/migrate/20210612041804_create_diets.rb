class CreateDiets < ActiveRecord::Migration[6.1]
  def change
    create_table :diets do |t|
      t.boolean :keto
      t.boolean :low_carb
      t.boolean :vegan
      t.boolean :vegetarian
      t.boolean :pescatarian
      t.boolean :alkaline
      t.boolean :raw_food
      t.boolean :intermittent_fasting
      t.boolean :paleo
      t.boolean :clean_eating
      t.boolean :mediterranean

      t.timestamps
    end
  end
end
