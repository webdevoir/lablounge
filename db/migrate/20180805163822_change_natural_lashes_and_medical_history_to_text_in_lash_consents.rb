class ChangeNaturalLashesAndMedicalHistoryToTextInLashConsents < ActiveRecord::Migration[5.1]
  def change
    change_column :lash_consents, :natural_lashes, :text, array: true, default: []
    change_column :lash_consents, :medical_history, :text, array: true, default: []
  end
end
