class CreateBodyWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :body_weights do |t|
      t.integer :value
      t.integer :user_id
      t.string :unit

      t.timestamps
    end
  end
end
