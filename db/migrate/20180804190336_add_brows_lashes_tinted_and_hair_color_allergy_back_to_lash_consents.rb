class AddBrowsLashesTintedAndHairColorAllergyBackToLashConsents < ActiveRecord::Migration[5.1]
  def change
    add_column :lash_consents, :brows_lashes_tinted, :boolean
    add_column :lash_consents, :hair_color_allergy, :boolean
  end
end
