class RemoveWatchedFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :watched, :boolean
  end
end
