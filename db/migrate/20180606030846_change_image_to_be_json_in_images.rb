class ChangeImageToBeJsonInImages < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :image
    add_column :images, :image, :json
  end
end
