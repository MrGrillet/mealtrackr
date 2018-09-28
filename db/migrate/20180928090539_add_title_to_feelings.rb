class AddTitleToFeelings < ActiveRecord::Migration[5.1]
  def change
    add_column :feelings, :title, :string
  end
end
