class UpdateLashConsents < ActiveRecord::Migration[5.1]
  def change
    remove_column :lash_consents, :natural_lashes
    remove_column :lash_consents, :medical_past
    remove_column :lash_consents, :status
  end
end
