class CreateExerciseFocus < ActiveRecord::Migration[6.1]
  def change
    create_table :exercise_focus do |t|
      t.boolean :cardio
      t.boolean :muscle_strengthening
      t.boolean :aerobic
      t.string :details

      t.timestamps
    end
  end
end
