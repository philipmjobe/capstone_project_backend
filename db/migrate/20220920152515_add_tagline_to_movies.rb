class AddTaglineToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :tagline, :string
  end
end
