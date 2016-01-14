module V1
  class RentalResource < BaseResource
    attributes :title, :city, :bedrooms, :image, :daily_rent, :rent_payment_period

    has_one :rental_state
    has_one :property_type
    has_one :landlord
  end
end
