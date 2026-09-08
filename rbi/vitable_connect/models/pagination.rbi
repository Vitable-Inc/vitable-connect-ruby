# typed: strong

module VitableConnect
  module Models
    class Pagination < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(VitableConnect::Pagination, VitableConnect::Internal::AnyHash)
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
