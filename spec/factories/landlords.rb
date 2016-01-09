FactoryGirl.define do
  factory :landlord do
    name { Faker::Company.name }
    address { Faker::Address.street_address }
    telephone { Faker::PhoneNumber.phone_number }
  end
end
