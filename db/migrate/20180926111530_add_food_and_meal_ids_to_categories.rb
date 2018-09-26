class AddFoodAndMealIdsToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :food_categories, :meal_id, :integer
    add_column :food_categories, :food_id, :integer
  end
end
