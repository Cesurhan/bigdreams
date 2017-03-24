FactoryGirl.define do
  factory :order_item do
    Order nil
    Product nil
    Quantity 1
    Price ""
  end
end
