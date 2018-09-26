class AddTimeAndDrinksToMeals < ActiveRecord::Migration[5.1]
  def change
    add_column :meals, :meal_type, :string
    add_column :meals, :drink_count, :integer
  end
end
