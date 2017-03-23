class Product < ApplicationRecord
  mount_uploader :photo, ImageUploader
end
