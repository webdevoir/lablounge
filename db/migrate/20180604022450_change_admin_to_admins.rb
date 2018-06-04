class ChangeAdminToAdmins < ActiveRecord::Migration[5.1]
  def change
    rename_table :admin, :admins
  end
end
