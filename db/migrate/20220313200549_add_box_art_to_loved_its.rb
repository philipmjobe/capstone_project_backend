class AddBoxArtToLovedIts < ActiveRecord::Migration[6.1]
  def change
    add_column :lovedits, :box_art, :string
  end
end
