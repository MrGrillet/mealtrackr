class CreateFoodCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :food_categories do |t|
      t.string :name
      t.text :description
      t.string :colour
      t.string :image

      t.timestamps
    end
  end
end
