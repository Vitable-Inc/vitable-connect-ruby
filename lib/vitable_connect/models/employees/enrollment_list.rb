# frozen_string_literal: true

module VitableConnect
  module Models
    module Employees
      # @see VitableConnect::Resources::Employees::Enrollments#list
      class EnrollmentList < VitableConnect::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<VitableConnect::Models::Enrollment>]
        required :data, -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Enrollment] }

        # @!attribute pagination
        #   Pagination metadata for list responses.
        #
        #   @return [VitableConnect::Models::Pagination]
        required :pagination, -> { VitableConnect::Pagination }

        # @!method initialize(data:, pagination:)
        #   Paginated list response containing enrollment resources.
        #
        #   @param data [Array<VitableConnect::Models::Enrollment>]
        #
        #   @param pagination [VitableConnect::Models::Pagination] Pagination metadata for list responses.
      end
    end
  end
end
