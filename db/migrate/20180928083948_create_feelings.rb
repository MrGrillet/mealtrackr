class CreateFeelings < ActiveRecord::Migration[5.1]
  def change
    create_table :feelings do |t|
      t.integer :sleep_rating
      t.integer :pain_rating
      t.integer :mood_rating

      t.timestamps
    end
  end
end
