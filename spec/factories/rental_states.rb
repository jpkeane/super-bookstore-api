FactoryGirl.define do
  factory :rental_state do
    sequence(:name) { |n| "State #{n}" }
  end
end
