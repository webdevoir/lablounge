class RenameAdminsToUsers < ActiveRecord::Migration[5.1]
  def change
    rename_table :admins, :users
  end
end
