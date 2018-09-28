class CreateLiquids < ActiveRecord::Migration[5.1]
  def change
    create_table :liquids do |t|
      t.string :name
      t.text :description
      t.integer :category
      t.string :image
      t.integer :liquid_category_id

      t.timestamps
    end
  end
end
