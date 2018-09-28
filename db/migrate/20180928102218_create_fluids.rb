class CreateFluids < ActiveRecord::Migration[5.1]
  def change
    create_table :fluids do |t|
      t.integer :category
      t.integer :units

      t.timestamps
    end
  end
end
