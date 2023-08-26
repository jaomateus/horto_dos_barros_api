class AddFlowerColorToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :flower_color, :string
  end
end
