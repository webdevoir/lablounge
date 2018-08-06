class AddNaturalLashesAndMedicalPastToLashConsents < ActiveRecord::Migration[5.1]
  def change
    add_column :lash_consents, :natural_lashes, :string, array: true, default: []
    add_column :lash_consents, :medical_history, :string, array: true, default: []
  end
end
