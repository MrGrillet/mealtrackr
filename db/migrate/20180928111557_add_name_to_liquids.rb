class AddNameToLiquids < ActiveRecord::Migration[5.1]
  def change
    add_column :liquids, :name, :string
  end
end
