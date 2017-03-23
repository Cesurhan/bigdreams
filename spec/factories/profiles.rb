FactoryGirl.define do
  factory :profile do
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    street     { Faker::Address.street_address }
    postal     { Faker::Address.postcode }
    city       { Faker::Address.city }
    country    { Faker::Address.country }

    user       { build(:user) }
 end
end
