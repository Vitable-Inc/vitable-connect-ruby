# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#retrieve_invoice_pdf
    class EmployerRetrieveInvoicePdfResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute download_url
      #   Time-limited Chargebee PDF download link for the invoice.
      #
      #   @return [String]
      required :download_url, String

      # @!method initialize(download_url:)
      #   @param download_url [String] Time-limited Chargebee PDF download link for the invoice.
    end
  end
end
