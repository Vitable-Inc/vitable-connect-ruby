# frozen_string_literal: true

module VitableConnect
  module Types
    # Unpaginated ``{"data": [...]}`` list of organization hris providers.
    class OrganizationHrisProvidersResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[VitableConnect::Types::OrganizationHrisProvider] }, optional: false, nullable: false
    end
  end
end
