class ChangeBirthdateToBeStringInLashConsents < ActiveRecord::Migration[5.1]
  def change
    change_column :lash_consents, :birthdate, :string
  end
end
