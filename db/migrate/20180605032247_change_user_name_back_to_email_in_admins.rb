class ChangeUserNameBackToEmailInAdmins < ActiveRecord::Migration[5.1]
  def change
    rename_column :admins, :username, :email
  end
end
