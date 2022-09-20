class ChangeBoxArtToPosterPathInLovedIts < ActiveRecord::Migration[6.1]
  def change
    rename_column :lovedits, :box_art, :poster_path
  end
end
