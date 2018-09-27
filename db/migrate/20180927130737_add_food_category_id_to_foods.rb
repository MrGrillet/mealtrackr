class AddFoodCategoryIdToFoods < ActiveRecord::Migration[5.1]
  def change
    add_column :foods, :food_category_id, :integer
  end
end
