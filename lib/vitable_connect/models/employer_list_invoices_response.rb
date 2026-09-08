# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#list_invoices
    class EmployerListInvoicesResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<VitableConnect::Models::EmployerListInvoicesResponse::Data>]
      required :data,
               -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::EmployerListInvoicesResponse::Data] }

      # @!attribute pagination
      #
      #   @return [VitableConnect::Models::EmployerListInvoicesResponse::Pagination]
      required :pagination, -> { VitableConnect::Models::EmployerListInvoicesResponse::Pagination }

      # @!method initialize(data:, pagination:)
      #   Cursor-paginated invoices envelope:
      #   `{ "data": [...], "pagination": { "next_offset": ... } }`.
      #
      #   @param data [Array<VitableConnect::Models::EmployerListInvoicesResponse::Data>]
      #   @param pagination [VitableConnect::Models::EmployerListInvoicesResponse::Pagination]

      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute invoice_id
        #   Chargebee invoice id (external id, not a prefixed UUID).
        #
        #   @return [String]
        required :invoice_id, String

        # @!attribute period
        #   Invoice date as an ISO string, or null.
        #
        #   @return [String, nil]
        required :period, String, nil?: true

        # @!attribute status
        #   Chargebee invoice status (e.g. `paid`), or null.
        #
        #   @return [String, nil]
        required :status, String, nil?: true

        # @!attribute total
        #   Invoice total in dollars, or null.
        #
        #   @return [Float, nil]
        required :total, Float, nil?: true

        # @!method initialize(invoice_id:, period:, status:, total:)
        #   @param invoice_id [String] Chargebee invoice id (external id, not a prefixed UUID).
        #
        #   @param period [String, nil] Invoice date as an ISO string, or null.
        #
        #   @param status [String, nil] Chargebee invoice status (e.g. `paid`), or null.
        #
        #   @param total [Float, nil] Invoice total in dollars, or null.
      end

      # @see VitableConnect::Models::EmployerListInvoicesResponse#pagination
      class Pagination < VitableConnect::Internal::Type::BaseModel
        # @!attribute next_offset
        #   Opaque JSON-encoded cursor for the next page; null when there are no more pages.
        #
        #   @return [String, nil]
        required :next_offset, String, nil?: true

        # @!method initialize(next_offset:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::EmployerListInvoicesResponse::Pagination} for more
        #   details.
        #
        #   @param next_offset [String, nil] Opaque JSON-encoded cursor for the next page; null when there are no more pages.
      end
    end
  end
end
