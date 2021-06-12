class CreateExerciseTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :exercise_times do |t|
      t.boolean :early_morning
      t.boolean :morning
      t.boolean :afternoon
      t.boolean :early_evening
      t.boolean :late_evening
      t.boolean :late_night

      t.timestamps
    end
  end
end
