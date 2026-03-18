# frozen_string_literal: true

module VitableConnect
  module Models
    module Employees
      # @see VitableConnect::Resources::Employees::Enrollments#list
      class EnrollmentListParams < VitableConnect::Internal::Type::BaseModel
        extend VitableConnect::Internal::Type::RequestParameters::Converter
        include VitableConnect::Internal::Type::RequestParameters

        # @!attribute employee_id
        #   Unique employee identifier (empl\_\*)
        #
        #   @return [String]
        required :employee_id, String

        # @!attribute limit
        #   Items per page (default: 20, max: 100)
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute page
        #   Page number (default: 1)
        #
        #   @return [Integer, nil]
        optional :page, Integer

        # @!method initialize(employee_id:, limit: nil, page: nil, request_options: {})
        #   @param employee_id [String] Unique employee identifier (empl\_\*)
        #
        #   @param limit [Integer] Items per page (default: 20, max: 100)
        #
        #   @param page [Integer] Page number (default: 1)
        #
        #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
