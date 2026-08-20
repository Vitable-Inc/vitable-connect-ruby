# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#retrieve_invoice_pdf
    class EmployerRetrieveInvoicePdfParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute employer_id
      #   Unique employer identifier (empr\_\*)
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute invoice_id
      #   External Chargebee invoice id (not a prefixed UUID).
      #
      #   @return [String]
      required :invoice_id, String

      # @!method initialize(employer_id:, invoice_id:, request_options: {})
      #   @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      #   @param invoice_id [String] External Chargebee invoice id (not a prefixed UUID).
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
