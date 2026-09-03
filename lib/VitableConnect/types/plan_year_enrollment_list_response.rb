# frozen_string_literal: true

module VitableConnect
  module Types
    # Paginated list response containing plan year enrollment resources.
    class PlanYearEnrollmentListResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[VitableConnect::Types::PlanYearEnrollment] }, optional: false, nullable: false

      field :pagination, -> { VitableConnect::Types::Pagination }, optional: false, nullable: false
    end
  end
end
