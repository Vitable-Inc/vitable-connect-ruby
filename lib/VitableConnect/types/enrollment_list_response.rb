# frozen_string_literal: true

module VitableConnect
  module Types
    # Paginated list response containing enrollment resources.
    class EnrollmentListResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[VitableConnect::Types::Enrollment] }, optional: false, nullable: false

      field :pagination, -> { VitableConnect::Types::Pagination }, optional: false, nullable: false
    end
  end
end
