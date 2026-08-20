# typed: strong

module VitableConnect
  module Models
    class EmployerListInvoicesParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployerListInvoicesParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique employer identifier (empr\_\*)
      sig { returns(String) }
      attr_accessor :employer_id

      # Maximum number of invoices per page
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Opaque cursor from a previous page's next_offset
      sig { returns(T.nilable(String)) }
      attr_accessor :offset

      sig do
        params(
          employer_id: String,
          limit: Integer,
          offset: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique employer identifier (empr\_\*)
        employer_id:,
        # Maximum number of invoices per page
        limit: nil,
        # Opaque cursor from a previous page's next_offset
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            employer_id: String,
            limit: Integer,
            offset: T.nilable(String),
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
