class CreateGenderPreferences < ActiveRecord::Migration[6.1]
  def change
    create_table :gender_preferences do |t|
      t.boolean :male
      t.boolean :female
      t.boolean :nonbinary
      t.boolean :none

      t.timestamps
    end
  end
end
