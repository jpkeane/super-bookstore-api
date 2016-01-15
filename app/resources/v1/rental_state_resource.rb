module V1
  # RentalStateResource - JSONAPI Resource for RentalState
  class RentalStateResource < BaseResource
    attributes :name, :display_colour

    has_many :rentals

    class << self
      def creatable_fields(context)
        super - [:rentals]
      end

      alias_method :updatable_fields, :creatable_fields
    end
  end
end
