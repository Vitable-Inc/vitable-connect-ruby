# frozen_string_literal: true

module VitableConnect
  module Types
    # Paginated list response containing plan resources.
    class PlanListResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[VitableConnect::Types::Plan] }, optional: false, nullable: false

      field :pagination, -> { VitableConnect::Types::Pagination }, optional: false, nullable: false
    end
  end
end
