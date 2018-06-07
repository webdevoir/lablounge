class Image < ApplicationRecord
  mount_uploaders :image, ImageUploader
end
