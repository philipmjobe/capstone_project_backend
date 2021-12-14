class AddCategoryToWatchLists < ActiveRecord::Migration[6.1]
  def change
    add_column :watch_lists, :category, :string
  end
end
