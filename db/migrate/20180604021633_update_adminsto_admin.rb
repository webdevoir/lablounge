class UpdateAdminstoAdmin < ActiveRecord::Migration[5.1]
  def change
    rename_table :admins, :admin
  end
end
