class AddInfoToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :sun_requirements, :string
    add_column :plants, :soil_ph, :decimal, precision: 2
    add_column :plants, :drought_tolerance, :string
    add_column :plants, :plant_height, :decimal, precision: 2
    add_column :plants, :plant_width, :decimal, precision: 2
  end
end
