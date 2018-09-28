class DropLiquids < ActiveRecord::Migration[5.1]
  def change
    drop_table :liquids 
  end
end
