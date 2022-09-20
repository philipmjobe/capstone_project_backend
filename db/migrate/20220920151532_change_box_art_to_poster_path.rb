class ChangeBoxArtToPosterPath < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :box_art, :poster_path
  end
end
