class ChangeListToLists < ActiveRecord::Migration[6.1]
  def change
    rename_table :list, :lists
  end
end
