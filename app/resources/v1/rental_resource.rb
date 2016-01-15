module V1
  # RentalResource - JSONAPI Resource for Rental
  class RentalResource < BaseResource
    attributes :title, :city, :bedrooms, :image, :daily_rent, :rent_payment_period

    has_one :rental_state
    has_one :property_type
    has_one :landlord
  end
end
