# frozen_string_literal: true

module VitableConnect
  module Resources
    class Auth
      # Issues a short-lived access token from the authenticated API key. Access tokens
      # can optionally be bound to a specific employer or employee for scoped access.
      # Tokens expire after 15 minutes.
      #
      # @overload issue_access_token(grant_type:, bound_entity: nil, request_options: {})
      #
      # @param grant_type [Symbol, VitableConnect::Models::AuthIssueAccessTokenParams::GrantType] - `client_credentials` - client_credentials
      #
      # @param bound_entity [VitableConnect::Models::AuthIssueAccessTokenParams::BoundEntity, nil] Optional entity to bind the token to for scoped access
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::AuthIssueAccessTokenResponse]
      #
      # @see VitableConnect::Models::AuthIssueAccessTokenParams
      def issue_access_token(params)
        parsed, options = VitableConnect::AuthIssueAccessTokenParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/auth/access-tokens",
          body: parsed,
          model: VitableConnect::Models::AuthIssueAccessTokenResponse,
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
