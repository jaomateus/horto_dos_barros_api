class AddFeaturedToPlant < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :featured, :boolean
  end
end
