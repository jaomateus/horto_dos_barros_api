class RemoveTableReviews < ActiveRecord::Migration[7.0]
  def change
    remove_column :plants, :stock_quantity
  end
end
