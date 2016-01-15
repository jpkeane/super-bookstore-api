module V1
  # LandlordResource - JSONAPI Resource for Landlord
  class LandlordResource < BaseResource
    attributes :name, :address, :telephone

    has_many :rentals

    class << self
      def creatable_fields(context)
        super - [:rentals]
      end

      alias_method :updatable_fields, :creatable_fields
    end
  end
end
