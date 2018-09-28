class CreateLiquidCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :liquid_categories do |t|
      t.string :name
      t.string :colour
      t.string :type
      t.integer :units

      t.timestamps
    end
  end
end
