class AddStockToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :stock, :integer
  end
end
