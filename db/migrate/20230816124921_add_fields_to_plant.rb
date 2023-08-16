class AddFieldsToPlant < ActiveRecord::Migration[7.0]
  def change
    add_column :plants, :family, :string
    add_column :plants, :genus, :string
    add_column :plants, :scientific_name, :string
    add_column :plants, :common_name, :string
    add_column :plants, :eddible, :boolean
    add_column :plants, :n_fixer, :boolean
    add_column :plants, :image_url, :string
  end
end
