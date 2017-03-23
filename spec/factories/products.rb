FactoryGirl.define do
  factory :product do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence(40) }
    price { Faker::Commerce.price }
    photo "MyString"
 end
end
