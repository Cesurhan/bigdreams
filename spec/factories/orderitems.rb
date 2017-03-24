FactoryGirl.define do
  factory :orderitem do
    order nil
    product nil
    quantity 1
    price "9.99"
  end
end
