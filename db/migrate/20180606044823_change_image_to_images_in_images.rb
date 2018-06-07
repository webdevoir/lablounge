class ChangeImageToImagesInImages < ActiveRecord::Migration[5.1]
  def change
    rename_column :images, :image, :images
  end
end
