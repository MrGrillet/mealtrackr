class AddUserIdToFeelings < ActiveRecord::Migration[5.1]
  def change
    add_column :feelings, :user_id, :integer
  end
end
