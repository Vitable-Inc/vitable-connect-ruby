# frozen_string_literal: true

module VitableConnect
  module Types
    # Paginated list response containing organization employer resources.
    class OrganizationEmployerListResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[VitableConnect::Types::OrganizationEmployer] }, optional: false, nullable: false

      field :pagination, -> { VitableConnect::Types::Pagination }, optional: false, nullable: false
    end
  end
end
