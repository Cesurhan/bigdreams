class Product < ApplicationRecord
  has_many :orderitems, dependent: :destroy

  mount_uploader :photo, ImageUploader

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

end
