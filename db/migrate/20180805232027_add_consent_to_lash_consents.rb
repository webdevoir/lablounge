class AddConsentToLashConsents < ActiveRecord::Migration[5.1]
  def change
    add_column :lash_consents, :consent, :boolean
    add_column :lash_consents, :consent_timestamp, :datetime
  end
end
