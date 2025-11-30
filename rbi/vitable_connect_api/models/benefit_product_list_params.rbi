# typed: strong

module VitableConnectAPI
  module Models
    class BenefitProductListParams < VitableConnectAPI::Internal::Type::BaseModel
      extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
      include VitableConnectAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::BenefitProductListParams,
            VitableConnectAPI::Internal::AnyHash
          )
        end

      # Filter by active status
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active_in

      sig { params(active_in: T::Boolean).void }
      attr_writer :active_in

      # Filter by product category
      sig { returns(T.nilable(VitableConnectAPI::Category::OrSymbol)) }
      attr_reader :category

      sig { params(category: VitableConnectAPI::Category::OrSymbol).void }
      attr_writer :category

      # Items per page (default: 20, max: 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Page number (default: 1)
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # Filter by product code
      sig { returns(T.nilable(VitableConnectAPI::ProductCode::OrSymbol)) }
      attr_reader :product_code

      sig do
        params(product_code: VitableConnectAPI::ProductCode::OrSymbol).void
      end
      attr_writer :product_code

      sig do
        params(
          active_in: T::Boolean,
          category: VitableConnectAPI::Category::OrSymbol,
          limit: Integer,
          page: Integer,
          product_code: VitableConnectAPI::ProductCode::OrSymbol,
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by active status
        active_in: nil,
        # Filter by product category
        category: nil,
        # Items per page (default: 20, max: 100)
        limit: nil,
        # Page number (default: 1)
        page: nil,
        # Filter by product code
        product_code: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            active_in: T::Boolean,
            category: VitableConnectAPI::Category::OrSymbol,
            limit: Integer,
            page: Integer,
            product_code: VitableConnectAPI::ProductCode::OrSymbol,
            request_options: VitableConnectAPI::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
