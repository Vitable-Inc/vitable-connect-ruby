# typed: strong

module VitableConnect
  module Models
    class EmployerRetrieveInvoicePdfParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployerRetrieveInvoicePdfParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique employer identifier (empr\_\*)
      sig { returns(String) }
      attr_accessor :employer_id

      # External Chargebee invoice id (not a prefixed UUID).
      sig { returns(String) }
      attr_accessor :invoice_id

      sig do
        params(
          employer_id: String,
          invoice_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique employer identifier (empr\_\*)
        employer_id:,
        # External Chargebee invoice id (not a prefixed UUID).
        invoice_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            employer_id: String,
            invoice_id: String,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
