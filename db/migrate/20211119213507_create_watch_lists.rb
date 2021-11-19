class CreateWatchLists < ActiveRecord::Migration[6.1]
  def change
    create_table :watch_lists do |t|
      t.integer :user_id
      t.integer :movie_id
      t.boolean :watched

      t.timestamps
    end
  end
end
