class AddCategoryToPlants < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :category, :string
  end
end
