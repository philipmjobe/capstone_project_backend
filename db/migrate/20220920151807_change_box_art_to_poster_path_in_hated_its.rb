class ChangeBoxArtToPosterPathInHatedIts < ActiveRecord::Migration[6.1]
  def change
    rename_column :hatedits, :box_art, :poster_path
  end
end
