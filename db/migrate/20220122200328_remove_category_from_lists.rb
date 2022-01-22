class RemoveCategoryFromLists < ActiveRecord::Migration[6.1]
  def change
    remove_column :lists, :category, :string 
  end
end
