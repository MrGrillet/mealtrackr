class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.string :title
      t.text :notes
      t.integer :mood_rating
      t.integer :sleep_rating
      t.text :physical_symptoms
      t.text :psychological_symptoms
      t.string :timestamps

      t.timestamps
    end
  end
end
