class CreateExerciseTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :exercise_times do |t|
      t.string :early_morning
      t.string :morning
      t.string :afternoon
      t.string :early_evening
      t.string :late_evening
      t.string :late_night

      t.timestamps
    end
  end
end
