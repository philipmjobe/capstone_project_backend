class ChangeWatchListsToList < ActiveRecord::Migration[6.1]
  def change
    rename_table :watch_lists, :list
  end
end
