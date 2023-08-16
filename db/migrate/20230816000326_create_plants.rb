class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.integer :id_trefle
      t.integer :stock_quantity
      t.boolean :discontinued
      t.decimal :price, precision: 2

      t.timestamps
    end
  end
end
