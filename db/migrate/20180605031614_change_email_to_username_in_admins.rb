class ChangeEmailToUsernameInAdmins < ActiveRecord::Migration[5.1]
  def change
    rename_column :admins, :email, :username
  end
end
