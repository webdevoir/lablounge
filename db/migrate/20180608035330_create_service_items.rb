class CreateServiceItems < ActiveRecord::Migration[5.1]
  def change
    create_table :service_items do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
