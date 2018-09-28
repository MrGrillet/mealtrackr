class AddUserIdToLiquid < ActiveRecord::Migration[5.1]
  def change
    add_column :liquids, :user_id, :integer
  end
end
