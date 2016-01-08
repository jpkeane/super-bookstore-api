FactoryGirl.define do
  factory :rental do
    title 'New rental'
    city { Faker::Address.city }
    property_type
    image { "#{Faker::Internet.url('example.com')}.jpg" }
    bedrooms { rand(1..5) }
  end
end
