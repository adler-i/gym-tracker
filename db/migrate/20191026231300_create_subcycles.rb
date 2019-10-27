class CreateSubcycles < ActiveRecord::Migration[6.0]
  def change
    create_table :subcycles do |t|
      t.integer :cycle_id
      t.integer :number

      t.timestamps
    end
  end
end
