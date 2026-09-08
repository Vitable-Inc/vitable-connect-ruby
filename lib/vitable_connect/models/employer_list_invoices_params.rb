# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#list_invoices
    class EmployerListInvoicesParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute employer_id
      #   Unique employer identifier (empr\_\*)
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute limit
      #   Maximum number of invoices per page
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   Opaque cursor from a previous page's next_offset
      #
      #   @return [String, nil]
      optional :offset, String, nil?: true

      # @!method initialize(employer_id:, limit: nil, offset: nil, request_options: {})
      #   @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      #   @param limit [Integer] Maximum number of invoices per page
      #
      #   @param offset [String, nil] Opaque cursor from a previous page's next_offset
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
