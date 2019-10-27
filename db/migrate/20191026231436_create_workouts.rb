class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.integer :subcycle_id
      t.datetime :workout_date
      t.text :notes

      t.timestamps
    end
  end
end
