class CreateLashConsents < ActiveRecord::Migration[5.1]
  def change
    create_table :lash_consents do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.text :notes
      t.boolean :lash_lift_before
      t.string :natural_lashes
      t.string :allergies
      t.string :brows_lashes_tinted
      t.string :hair_color_allergy
      t.text :medical_past

      t.timestamps
    end
  end
end
