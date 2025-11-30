# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Employers
      # @see VitableConnectAPI::Resources::Employers::Employees#list
      class EmployeeListParams < VitableConnectAPI::Internal::Type::BaseModel
        extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
        include VitableConnectAPI::Internal::Type::RequestParameters

        # @!attribute active_in
        #   Filter by active status
        #
        #   @return [Boolean, nil]
        optional :active_in, VitableConnectAPI::Internal::Type::Boolean

        # @!attribute employee_class
        #   Filter by employment classification
        #
        #   @return [Symbol, VitableConnectAPI::Models::Employers::EmployeeClass, nil]
        optional :employee_class, enum: -> { VitableConnectAPI::Employers::EmployeeClass }

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
        #   @param employee_class [Symbol, VitableConnectAPI::Models::Employers::EmployeeClass] Filter by employment classification
        #
        #   @param limit [Integer] Items per page (default: 20, max: 100)
        #
        #   @param page [Integer] Page number (default: 1)
        #
        #   @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
