# frozen_string_literal: true

module VitableConnect
  module Types
    # Envelope for the caller's organization memberships (paginated).
    class OrganizationsListResponse < Internal::Types::Model
      field :organizations, -> { Internal::Types::Array[VitableConnect::Types::Organization] }, optional: false, nullable: false

      field :total, -> { Integer }, optional: false, nullable: false
    end
  end
end
