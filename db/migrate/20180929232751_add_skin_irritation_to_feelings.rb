class AddSkinIrritationToFeelings < ActiveRecord::Migration[5.1]
  def change
    add_column :feelings, :skin_irritation, :integer
  end
end
