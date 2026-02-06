# frozen_string_literal: true

module VitableConnect
  module Resources
    class BenefitProducts
      # @return [VitableConnect::Resources::BenefitProducts::PlanYears]
      attr_reader :plan_years

      # Retrieves a paginated list of all benefit products that the authenticated
      # organization has access to and can offer to their employers. Use query
      # parameters to filter by category, product code, or active status.
      #
      # @overload list(active_in: nil, category: nil, limit: nil, page: nil, product_code: nil, request_options: {})
      #
      # @param active_in [Boolean] Filter by active status
      #
      # @param category [Symbol, VitableConnect::Models::Category] Filter by product category
      #
      # @param limit [Integer] Items per page (default: 20, max: 100)
      #
      # @param page [Integer] Page number (default: 1)
      #
      # @param product_code [Symbol, VitableConnect::Models::ProductCode] Filter by product code
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::BenefitProductListResponse]
      #
      # @see VitableConnect::Models::BenefitProductListParams
      def list(params = {})
        parsed, options = VitableConnect::BenefitProductListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/benefit-products",
          query: parsed,
          model: VitableConnect::Models::BenefitProductListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [VitableConnect::Client]
      def initialize(client:)
        @client = client
        @plan_years = VitableConnect::Resources::BenefitProducts::PlanYears.new(client: client)
      end
    end
  end
end
