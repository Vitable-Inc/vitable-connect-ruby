# typed: strong

module VitableConnect
  module Resources
    # Browse available benefit products that can be offered to employers
    class BenefitProducts
      # Configure annual benefit periods with coverage dates and contribution settings
      sig { returns(VitableConnect::Resources::BenefitProducts::PlanYears) }
      attr_reader :plan_years

      # Retrieves a paginated list of all benefit products that the authenticated
      # organization has access to and can offer to their employers. Use query
      # parameters to filter by category, product code, or active status.
      sig do
        params(
          active_in: T::Boolean,
          category: VitableConnect::Category::OrSymbol,
          limit: Integer,
          page: Integer,
          product_code: VitableConnect::ProductCode::OrSymbol,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::BenefitProductListResponse)
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
      sig { params(client: VitableConnect::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
