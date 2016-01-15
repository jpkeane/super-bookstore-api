module V1
  # PropertyTypeResource - JSONAPI Resource for PropertyType
  class PropertyTypeResource < BaseResource
    attributes :name

    has_many :rentals

    class << self
      def creatable_fields(context)
        super - [:rentals]
      end

      alias_method :updatable_fields, :creatable_fields
    end
  end
end
