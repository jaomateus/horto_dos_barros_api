class AddMoreColumnsToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :bee_plant, :boolean
    add_column :plants, :nutrient_miner, :boolean
    add_column :plants, :soil_type, :string
    add_column :plants, :hardiness_zone, :integer
  end
end
