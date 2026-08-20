# typed: strong

module VitableConnect
  module Models
    class EmployerRetrieveInvoicePdfResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::EmployerRetrieveInvoicePdfResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # Time-limited Chargebee PDF download link for the invoice.
      sig { returns(String) }
      attr_accessor :download_url

      sig { params(download_url: String).returns(T.attached_class) }
      def self.new(
        # Time-limited Chargebee PDF download link for the invoice.
        download_url:
      )
      end

      sig { override.returns({ download_url: String }) }
      def to_hash
      end
    end
  end
end
