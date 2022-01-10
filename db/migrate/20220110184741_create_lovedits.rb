class CreateLovedits < ActiveRecord::Migration[6.1]
  def change
    create_table :lovedits do |t|
      t.integer "movie_id"
      t.timestamps
    end
  end
end
