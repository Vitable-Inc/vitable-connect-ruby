# typed: strong

module VitableConnect
  module Models
    class EmployerListInvoicesResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::EmployerListInvoicesResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[VitableConnect::Models::EmployerListInvoicesResponse::Data]
        )
      end
      attr_accessor :data

      sig do
        returns(
          VitableConnect::Models::EmployerListInvoicesResponse::Pagination
        )
      end
      attr_reader :pagination

      sig do
        params(
          pagination:
            VitableConnect::Models::EmployerListInvoicesResponse::Pagination::OrHash
        ).void
      end
      attr_writer :pagination

      # Cursor-paginated invoices envelope:
      # `{ "data": [...], "pagination": { "next_offset": ... } }`.
      sig do
        params(
          data:
            T::Array[
              VitableConnect::Models::EmployerListInvoicesResponse::Data::OrHash
            ],
          pagination:
            VitableConnect::Models::EmployerListInvoicesResponse::Pagination::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, pagination:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                VitableConnect::Models::EmployerListInvoicesResponse::Data
              ],
            pagination:
              VitableConnect::Models::EmployerListInvoicesResponse::Pagination
          }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EmployerListInvoicesResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        # Chargebee invoice id (external id, not a prefixed UUID).
        sig { returns(String) }
        attr_accessor :invoice_id

        # Invoice date as an ISO string, or null.
        sig { returns(T.nilable(String)) }
        attr_accessor :period

        # Chargebee invoice status (e.g. `paid`), or null.
        sig { returns(T.nilable(String)) }
        attr_accessor :status

        # Invoice total in dollars, or null.
        sig { returns(T.nilable(Float)) }
        attr_accessor :total

        sig do
          params(
            invoice_id: String,
            period: T.nilable(String),
            status: T.nilable(String),
            total: T.nilable(Float)
          ).returns(T.attached_class)
        end
        def self.new(
          # Chargebee invoice id (external id, not a prefixed UUID).
          invoice_id:,
          # Invoice date as an ISO string, or null.
          period:,
          # Chargebee invoice status (e.g. `paid`), or null.
          status:,
          # Invoice total in dollars, or null.
          total:
        )
        end

        sig do
          override.returns(
            {
              invoice_id: String,
              period: T.nilable(String),
              status: T.nilable(String),
              total: T.nilable(Float)
            }
          )
        end
        def to_hash
        end
      end

      class Pagination < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EmployerListInvoicesResponse::Pagination,
              VitableConnect::Internal::AnyHash
            )
          end

        # Opaque JSON-encoded cursor for the next page; null when there are no more pages.
        sig { returns(T.nilable(String)) }
        attr_accessor :next_offset

        sig { params(next_offset: T.nilable(String)).returns(T.attached_class) }
        def self.new(
          # Opaque JSON-encoded cursor for the next page; null when there are no more pages.
          next_offset:
        )
        end

        sig { override.returns({ next_offset: T.nilable(String) }) }
        def to_hash
        end
      end
    end
  end
end
