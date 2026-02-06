# frozen_string_literal: true

module VitableConnectAPI
  module Resources
    class BenefitProducts
      # @return [VitableConnectAPI::Resources::BenefitProducts::PlanYears]
      attr_reader :plan_years

      # Retrieves a paginated list of all benefit products that the authenticated
      # organization has access to and can offer to their employers. Use query
      # parameters to filter by category, product code, or active status.
      #
      # @overload list(active_in: nil, category: nil, limit: nil, page: nil, product_code: nil, request_options: {})
      #
      # @param active_in [Boolean] Filter by active status
      #
      # @param category [Symbol, VitableConnectAPI::Models::Category] Filter by product category
      #
      # @param limit [Integer] Items per page (default: 20, max: 100)
      #
      # @param page [Integer] Page number (default: 1)
      #
      # @param product_code [Symbol, VitableConnectAPI::Models::ProductCode] Filter by product code
      #
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnectAPI::Models::BenefitProductListResponse]
      #
      # @see VitableConnectAPI::Models::BenefitProductListParams
      def list(params = {})
        parsed, options = VitableConnectAPI::BenefitProductListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/benefit-products",
          query: parsed,
          model: VitableConnectAPI::Models::BenefitProductListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [VitableConnectAPI::Client]
      def initialize(client:)
        @client = client
        @plan_years = VitableConnectAPI::Resources::BenefitProducts::PlanYears.new(client: client)
      end
    end
  end
end
