class AddNotesToFeeling < ActiveRecord::Migration[5.1]
  def change
    add_column :feelings, :notes, :text

  end
end
