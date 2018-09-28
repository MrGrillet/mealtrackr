class AddHeroImageToMeals < ActiveRecord::Migration[5.1]
  def change
    add_column :meals, :thumbnail, :string
    add_column :meals, :hero_image, :string
  end
end
