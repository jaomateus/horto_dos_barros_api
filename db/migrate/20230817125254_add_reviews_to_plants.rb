class AddReviewsToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :reviews, :integer
  end
end
