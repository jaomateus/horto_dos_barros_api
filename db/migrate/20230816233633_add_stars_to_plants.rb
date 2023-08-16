class AddStarsToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :stars, :integer, deafult: 0
  end
end
