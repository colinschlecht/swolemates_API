class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_diges
      t.integer :age
      t.string :gender
      t.references :exercise_time, null: false, foreign_key: true
      t.references :exercise_discipline, null: false, foreign_key: true
      t.references :diet, null: false, foreign_key: true
      t.references :gender_preference, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.references :music_preference, null: false, foreign_key: true

      t.timestamps
    end
  end
end
