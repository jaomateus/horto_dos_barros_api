class RemovePriceFromPlants < ActiveRecord::Migration[7.0]
  def change
    remove_column :plants, :price
  end
end
