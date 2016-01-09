FactoryGirl.define do
  factory :property_type do
    sequence(:name) { |n| "Type #{n}" }
  end
end
