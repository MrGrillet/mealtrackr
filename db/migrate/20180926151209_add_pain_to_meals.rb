class AddPainToMeals < ActiveRecord::Migration[5.1]
  def change
    add_column :meals, :pain, :integer
  end
end
