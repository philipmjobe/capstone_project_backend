class RemoveSubGenre < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :sub_genre, :string
  end
end
