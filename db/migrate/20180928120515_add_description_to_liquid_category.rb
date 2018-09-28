class AddDescriptionToLiquidCategory < ActiveRecord::Migration[5.1]
  def change
    add_column :liquid_categories, :description, :text
  end
end
