class CreateExerciseWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_weights do |t|
      t.integer :value
      t.integer :user_id
      t.string :init
      t.integer :exercise_id

      t.timestamps
    end
  end
end
