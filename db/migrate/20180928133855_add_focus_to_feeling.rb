class AddFocusToFeeling < ActiveRecord::Migration[5.1]
  def change
    add_column :feelings, :focus_rating, :integer
  end
end
