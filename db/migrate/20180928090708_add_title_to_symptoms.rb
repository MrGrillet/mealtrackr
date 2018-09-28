class AddTitleToSymptoms < ActiveRecord::Migration[5.1]
  def change
    add_column :feelings, :physical_symptoms, :string
    add_column :feelings, :psychological_symptoms, :string
  end
end
