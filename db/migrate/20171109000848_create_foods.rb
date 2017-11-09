class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.string :user_id, null: false
      t.integer :calories, null: false

      t.timestamps
    end
  end
end
