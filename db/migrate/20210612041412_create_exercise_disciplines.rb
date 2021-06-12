class CreateExerciseDisciplines < ActiveRecord::Migration[6.1]
  def change
    create_table :exercise_disciplines do |t|
      t.boolean :cardio
      t.boolean :muscle_strengthening
      t.boolean :aerobic

      t.timestamps
    end
  end
end
