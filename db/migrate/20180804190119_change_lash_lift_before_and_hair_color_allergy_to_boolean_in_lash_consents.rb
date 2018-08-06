class ChangeLashLiftBeforeAndHairColorAllergyToBooleanInLashConsents < ActiveRecord::Migration[5.1]
  def change
    remove_column :lash_consents, :brows_lashes_tinted
    remove_column :lash_consents, :hair_color_allergy
  end
end
