class Profile < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :street, presence: true
  validates :postal_code, presence: true
  validates :city, presence: true
  validates :country, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

end
