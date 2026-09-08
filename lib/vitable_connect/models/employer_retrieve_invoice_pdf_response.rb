# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#retrieve_invoice_pdf
    class EmployerRetrieveInvoicePdfResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [VitableConnect::Models::EmployerRetrieveInvoicePdfResponse::Data]
      required :data, -> { VitableConnect::Models::EmployerRetrieveInvoicePdfResponse::Data }

      # @!method initialize(data:)
      #   Response containing a single employer invoice pdf resource.
      #
      #   @param data [VitableConnect::Models::EmployerRetrieveInvoicePdfResponse::Data]

      # @see VitableConnect::Models::EmployerRetrieveInvoicePdfResponse#data
      class Data < VitableConnect::Internal::Type::BaseModel
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
end
