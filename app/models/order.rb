class Order < ApplicationRecord
  belongs_to :user
  has_many :orderitems, dependent: :destroy


  def calculate_total_order

    total_price = 0
    orderitems.each do |orderitem|
      total_price += orderitem.amount * orderitem.price
    end
    total_price
  end
end
