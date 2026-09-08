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

      sig do
        returns(
          VitableConnect::Models::EmployerRetrieveInvoicePdfResponse::Data
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            VitableConnect::Models::EmployerRetrieveInvoicePdfResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # Response containing a single employer invoice pdf resource.
      sig do
        params(
          data:
            VitableConnect::Models::EmployerRetrieveInvoicePdfResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              VitableConnect::Models::EmployerRetrieveInvoicePdfResponse::Data
          }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EmployerRetrieveInvoicePdfResponse::Data,
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
end
