class ChangeWatchListToList < ActiveRecord::Migration[6.1]
  def change
    rename_table :watch_list, :list
  end
end
