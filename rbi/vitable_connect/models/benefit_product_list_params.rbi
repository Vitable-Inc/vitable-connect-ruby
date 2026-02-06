# typed: strong

module VitableConnect
  module Models
    class BenefitProductListParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::BenefitProductListParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Filter by active status
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active_in

      sig { params(active_in: T::Boolean).void }
      attr_writer :active_in

      # Filter by product category
      sig { returns(T.nilable(VitableConnect::Category::OrSymbol)) }
      attr_reader :category

      sig { params(category: VitableConnect::Category::OrSymbol).void }
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
      sig { returns(T.nilable(VitableConnect::ProductCode::OrSymbol)) }
      attr_reader :product_code

      sig { params(product_code: VitableConnect::ProductCode::OrSymbol).void }
      attr_writer :product_code

      sig do
        params(
          active_in: T::Boolean,
          category: VitableConnect::Category::OrSymbol,
          limit: Integer,
          page: Integer,
          product_code: VitableConnect::ProductCode::OrSymbol,
          request_options: VitableConnect::RequestOptions::OrHash
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
            category: VitableConnect::Category::OrSymbol,
            limit: Integer,
            page: Integer,
            product_code: VitableConnect::ProductCode::OrSymbol,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
