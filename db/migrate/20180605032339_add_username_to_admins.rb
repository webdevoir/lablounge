class AddUsernameToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :username, :string
  end
end
