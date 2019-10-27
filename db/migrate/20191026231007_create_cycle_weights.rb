class CreateCycleWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :cycle_weights do |t|
      t.integer :exercise_weight_id
      t.integer :cycle_id
      t.string :flag

      t.timestamps
    end
  end
end
