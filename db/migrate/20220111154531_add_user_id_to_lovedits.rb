class AddUserIdToLovedits < ActiveRecord::Migration[6.1]
  def change
    add_column :lovedits, :user_id, :integer
  end
end
