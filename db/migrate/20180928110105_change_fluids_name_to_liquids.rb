class ChangeFluidsNameToLiquids < ActiveRecord::Migration[5.1]
  def change
    rename_table :fluids, :liquids
  end
end
