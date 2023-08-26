class ChangeColumnCategoryToLayer < ActiveRecord::Migration[7.0]
  def change
    rename_column :plants, :category, :layer
  end
end
