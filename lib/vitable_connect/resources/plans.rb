# frozen_string_literal: true

module VitableConnect
  module Resources
    class Plans
      # Returns a paginated list of benefit plans linked to the authenticated
      # organization.
      #
      # @overload list(limit: nil, page: nil, request_options: {})
      #
      # @param limit [Integer] Items per page (default: 20, max: 100)
      #
      # @param page [Integer] Page number (default: 1)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Internal::PageNumberPage<VitableConnect::Models::PlanListResponse>]
      #
      # @see VitableConnect::Models::PlanListParams
      def list(params = {})
        parsed, options = VitableConnect::PlanListParams.dump_request(params)
        query = VitableConnect::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/plans",
          query: query,
          page: VitableConnect::Internal::PageNumberPage,
          model: VitableConnect::Models::PlanListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [VitableConnect::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
