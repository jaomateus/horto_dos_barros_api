class AddColumnsToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :fruit_color, :integer
  end
end
