class CreateWorkoutSets < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_sets do |t|
      t.integer :exercise_id
      t.integer :workout_id
      t.integer :intended_reps
      t.integer :performed_reps
      t.text :options
      t.integer :exercise_weight_id

      t.timestamps
    end
  end
end
