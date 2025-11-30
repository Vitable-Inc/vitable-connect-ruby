# typed: strong

module VitableConnectAPI
  module Resources
    class BenefitProducts
      sig { returns(VitableConnectAPI::Resources::BenefitProducts::PlanYears) }
      attr_reader :plan_years

      # Retrieves a paginated list of all benefit products that the authenticated
      # organization has access to and can offer to their employers. Use query
      # parameters to filter by category, product code, or active status.
      sig do
        params(
          active_in: T::Boolean,
          category: VitableConnectAPI::Category::OrSymbol,
          limit: Integer,
          page: Integer,
          product_code: VitableConnectAPI::ProductCode::OrSymbol,
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(
          T::Array[VitableConnectAPI::Models::BenefitProductListResponseItem]
        )
      end
      def list(
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

      # @api private
      sig do
        params(client: VitableConnectAPI::Client).returns(T.attached_class)
      end
      def self.new(client:)
      end
    end
  end
end
