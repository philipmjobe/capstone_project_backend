class ChangeDescriptionToOverview < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :description, :overview
  end
end
