# typed: strong

module VitableConnectAPI
  module Models
    class EmployerListResponse < VitableConnectAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::Models::EmployerListResponse,
            VitableConnectAPI::Internal::AnyHash
          )
        end

      sig { returns(T::Array[VitableConnectAPI::Employer]) }
      attr_accessor :data

      # Pagination metadata for list responses.
      sig do
        returns(VitableConnectAPI::Models::EmployerListResponse::Pagination)
      end
      attr_reader :pagination

      sig do
        params(
          pagination:
            VitableConnectAPI::Models::EmployerListResponse::Pagination::OrHash
        ).void
      end
      attr_writer :pagination

      # Paginated list response containing employer resources.
      sig do
        params(
          data: T::Array[VitableConnectAPI::Employer::OrHash],
          pagination:
            VitableConnectAPI::Models::EmployerListResponse::Pagination::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        data:,
        # Pagination metadata for list responses.
        pagination:
      )
      end

      sig do
        override.returns(
          {
            data: T::Array[VitableConnectAPI::Employer],
            pagination:
              VitableConnectAPI::Models::EmployerListResponse::Pagination
          }
        )
      end
      def to_hash
      end

      class Pagination < VitableConnectAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnectAPI::Models::EmployerListResponse::Pagination,
              VitableConnectAPI::Internal::AnyHash
            )
          end

        # Items per page
        sig { returns(Integer) }
        attr_accessor :limit

        # Current page number
        sig { returns(Integer) }
        attr_accessor :page

        # Total number of items
        sig { returns(Integer) }
        attr_accessor :total

        # Total number of pages
        sig { returns(Integer) }
        attr_accessor :total_pages

        # Pagination metadata for list responses.
        sig do
          params(
            limit: Integer,
            page: Integer,
            total: Integer,
            total_pages: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Items per page
          limit:,
          # Current page number
          page:,
          # Total number of items
          total:,
          # Total number of pages
          total_pages:
        )
        end

        sig do
          override.returns(
            {
              limit: Integer,
              page: Integer,
              total: Integer,
              total_pages: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
