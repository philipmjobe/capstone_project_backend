class CreateHatedits < ActiveRecord::Migration[6.1]
  def change
    create_table :hatedits do |t|
      t.integer :movie_id
      t.integer :user_id
      t.string :box_art

      t.timestamps
    end
  end
end
