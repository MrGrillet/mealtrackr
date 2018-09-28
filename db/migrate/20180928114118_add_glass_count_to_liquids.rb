class AddGlassCountToLiquids < ActiveRecord::Migration[5.1]
  def change
    add_column :liquids, :glass_count, :integer
  end
end
