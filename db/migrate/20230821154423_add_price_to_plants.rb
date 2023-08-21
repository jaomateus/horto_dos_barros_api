class AddPriceToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :price, :float
  end
end
