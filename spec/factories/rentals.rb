FactoryGirl.define do
  factory :rental do
    title 'New rental'
    city { Faker::Address.city }
    property_type
    image { "#{Faker::Internet.url('example.com')}.jpg" }
    bedrooms { rand(1..5) }
    daily_rent { rand(400..800) }
    rent_payment_period 0
    rental_state
  end
end
