class ChangeCollumnPrice < ActiveRecord::Migration[7.0]
  def change
    change_column :plants, :price, :decimal
  end
end
