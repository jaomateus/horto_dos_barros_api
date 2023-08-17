class CreatePlantReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :plant_reviews do |t|
      t.integer :rating
      t.text :review
      t.integer :user_id
      t.integer :plant_id

      t.timestamps
    end
  end
end
