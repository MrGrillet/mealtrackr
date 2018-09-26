class CreateFoodItems < ActiveRecord::Migration[5.1]
  def change
    create_table :food_items do |t|
      t.integer :food_id
      t.integer :meal_id

      t.timestamps
    end
  end
end
