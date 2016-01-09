FactoryGirl.define do
  factory :rental_state do
    sequence(:name) { |n| "State #{n}" }
    display_colour '#e00000'
  end
end
