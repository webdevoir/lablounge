class ChangeImagesBackToImageInImages < ActiveRecord::Migration[5.1]
  def change
    rename_column :images, :images, :image
  end
end
