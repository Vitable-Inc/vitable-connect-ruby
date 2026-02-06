# frozen_string_literal: true

module VitableConnect
  module Models
    module Employers
      # @see VitableConnect::Resources::Employers::Employees#list
      class EmployeeListParams < VitableConnect::Internal::Type::BaseModel
        extend VitableConnect::Internal::Type::RequestParameters::Converter
        include VitableConnect::Internal::Type::RequestParameters

        # @!attribute active_in
        #   Filter by active status
        #
        #   @return [Boolean, nil]
        optional :active_in, VitableConnect::Internal::Type::Boolean

        # @!attribute employee_class
        #   Filter by employment classification
        #
        #   @return [Symbol, VitableConnect::Models::Employers::EmployeeClass, nil]
        optional :employee_class, enum: -> { VitableConnect::Employers::EmployeeClass }

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

        # @!method initialize(active_in: nil, employee_class: nil, limit: nil, page: nil, request_options: {})
        #   @param active_in [Boolean] Filter by active status
        #
        #   @param employee_class [Symbol, VitableConnect::Models::Employers::EmployeeClass] Filter by employment classification
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
