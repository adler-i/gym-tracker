class CreatePrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :user_id
      t.boolean :active
      t.string :program_type

      t.timestamps
    end
  end
end
