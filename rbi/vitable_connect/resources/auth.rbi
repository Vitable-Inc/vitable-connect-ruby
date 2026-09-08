# typed: strong

module VitableConnect
  module Resources
    # Issue short-lived access tokens for scoped API access
    class Auth
      # Issues a short-lived access token from the authenticated API key. Access tokens
      # can optionally be bound to a specific employer or employee for scoped access.
      # Tokens expire after 15 minutes.
      sig do
        params(
          grant_type:
            VitableConnect::AuthIssueAccessTokenParams::GrantType::OrSymbol,
          bound_entity:
            T.nilable(
              VitableConnect::AuthIssueAccessTokenParams::BoundEntity::OrHash
            ),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::AuthIssueAccessTokenResponse)
      end
      def issue_access_token(
        # - `client_credentials` - client_credentials
        grant_type:,
        # Optional entity to bind the token to for scoped access
        bound_entity: nil,
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
