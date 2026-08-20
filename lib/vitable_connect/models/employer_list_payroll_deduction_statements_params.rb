# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#list_payroll_deduction_statements
    class EmployerListPayrollDeductionStatementsParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute employer_id
      #   Unique employer identifier (empr\_\*)
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute limit
      #   Maximum number of statements per page
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute page
      #   Page number to retrieve (starts at 1)
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!method initialize(employer_id:, limit: nil, page: nil, request_options: {})
      #   @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      #   @param limit [Integer] Maximum number of statements per page
      #
      #   @param page [Integer] Page number to retrieve (starts at 1)
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
