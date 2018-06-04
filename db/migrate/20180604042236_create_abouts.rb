class CreateAbouts < ActiveRecord::Migration[5.1]
  def change
    create_table :abouts do |t|
      t.text :about_heading
      t.text :about_description

      t.timestamps
    end
  end
end
