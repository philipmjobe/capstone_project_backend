class ChangeNameToOriginalTitle < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :name, :original_title
  end
end
