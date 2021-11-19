class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.string :box_art
      t.string :sub_genre

      t.timestamps
    end
  end
end
