class AddBirthdateToLashConsents < ActiveRecord::Migration[5.1]
  def change
    add_column :lash_consents, :birthdate, :date
  end
end
