class UpdateEmailFieldInAdmin < ActiveRecord::Migration[5.1]
  def change
    rename_column :admin, :email, :username
  end
end
