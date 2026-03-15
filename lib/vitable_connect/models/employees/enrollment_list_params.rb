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

        # @!attribute coverage_effective_start_year
        #   Filter by coverage year
        #
        #   @return [Integer, nil]
        optional :coverage_effective_start_year, Integer

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

        # @!attribute plan_year
        #   Filter by plan year start (YYYY)
        #
        #   @return [Integer, nil]
        optional :plan_year, Integer

        # @!attribute status
        #   Filter by enrollment status
        #
        #   @return [Symbol, VitableConnect::Models::EnrollmentStatus, nil]
        optional :status, enum: -> { VitableConnect::EnrollmentStatus }

        # @!method initialize(employee_id:, coverage_effective_start_year: nil, limit: nil, page: nil, plan_year: nil, status: nil, request_options: {})
        #   @param employee_id [String] Unique employee identifier (empl\_\*)
        #
        #   @param coverage_effective_start_year [Integer] Filter by coverage year
        #
        #   @param limit [Integer] Items per page (default: 20, max: 100)
        #
        #   @param page [Integer] Page number (default: 1)
        #
        #   @param plan_year [Integer] Filter by plan year start (YYYY)
        #
        #   @param status [Symbol, VitableConnect::Models::EnrollmentStatus] Filter by enrollment status
        #
        #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
