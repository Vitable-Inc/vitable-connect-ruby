# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#list_employees
    class EmployerListEmployeesParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute employer_id
      #   Unique employer identifier (empr\_\*)
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute employment_status
      #   Filter by employment status (active or terminated)
      #
      #   @return [Symbol, VitableConnect::Models::EmployerListEmployeesParams::EmploymentStatus, nil]
      optional :employment_status, enum: -> { VitableConnect::EmployerListEmployeesParams::EmploymentStatus }

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

      # @!attribute search
      #   Case-insensitive search across employee first name, last name, and email
      #
      #   @return [String, nil]
      optional :search, String

      # @!method initialize(employer_id:, employment_status: nil, limit: nil, page: nil, search: nil, request_options: {})
      #   @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      #   @param employment_status [Symbol, VitableConnect::Models::EmployerListEmployeesParams::EmploymentStatus] Filter by employment status (active or terminated)
      #
      #   @param limit [Integer] Items per page (default: 20, max: 100)
      #
      #   @param page [Integer] Page number (default: 1)
      #
      #   @param search [String] Case-insensitive search across employee first name, last name, and email
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

      # Filter by employment status (active or terminated)
      module EmploymentStatus
        extend VitableConnect::Internal::Type::Enum

        ACTIVE = :active
        TERMINATED = :terminated

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
