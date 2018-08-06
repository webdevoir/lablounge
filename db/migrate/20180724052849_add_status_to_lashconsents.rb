class AddStatusToLashconsents < ActiveRecord::Migration[5.1]
  def change
    add_column :lash_consents, :status, :string
  end
end
