class CreateCycles < ActiveRecord::Migration[6.0]
  def change
    create_table :cycles do |t|
      t.integer :starting_weight_id
      t.integer :program_id
      t.integer :cycle_number
      t.boolean :active

      t.timestamps
    end
  end
end
