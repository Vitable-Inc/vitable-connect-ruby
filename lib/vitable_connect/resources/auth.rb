# frozen_string_literal: true

module VitableConnect
  module Resources
    class Auth
      # Some parameter documentations has been truncated, see
      # {VitableConnect::Models::AuthCompleteProfileParams} for more details.
      #
      # Collects the required profile fields (first_name, last_name, phone) for a
      # verified IdP identity and provisions the asclepius user: creates the BaseUser
      # (of the app-context's user_type, with the real phone) + the OrganizationUser
      # persona (name). An optional `user_type` narrows provisioning/resolution to a
      # single persona type. When a same-email account already exists (verified email)
      # it links + finishes that account instead. Returns the auth session. Domain
      # failures surface as the normalized error envelope with an `app_error_code`: 403
      # `email_verification_required` / `user_type_not_allowed`; 409 `identity_conflict`
      # / `needs_selection` (fetch candidates via `/personas`); 422 `invalid_phone`.
      #
      # @overload complete_profile(first_name:, last_name:, phone:, user_type: nil, request_options: {})
      #
      # @param first_name [String]
      #
      # @param last_name [String]
      #
      # @param phone [String]
      #
      # @param user_type [Symbol, VitableConnect::Models::AuthCompleteProfileParams::UserType] - `Member` - Member
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::AuthCompleteProfileResponse]
      #
      # @see VitableConnect::Models::AuthCompleteProfileParams
      def complete_profile(params)
        parsed, options = VitableConnect::AuthCompleteProfileParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/auth/complete-profile",
          body: parsed,
          model: VitableConnect::Models::AuthCompleteProfileResponse,
          security: {identity_provider_bearer: true},
          options: options
        )
      end

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
          security: {api_key_auth: true},
          options: options
        )
      end

      # Returns the personas linked to the bearer's IdP identity that the current
      # application is allowed to serve — the candidate set for a 'continue as'
      # selection when sign-up returns `needs_selection`. Single-type apps usually get 0
      # or 1 entry.
      #
      # @overload list_personas(request_options: {})
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<VitableConnect::Models::AuthListPersonasResponseItem>]
      #
      # @see VitableConnect::Models::AuthListPersonasParams
      def list_personas(params = {})
        @client.request(
          method: :get,
          path: "v1/auth/personas",
          model: VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::AuthListPersonasResponseItem],
          security: {identity_provider_bearer: true},
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {VitableConnect::Models::AuthLoginParams} for more details.
      #
      # One body-driven sign-in endpoint. Supply `email_or_phone` + `password` for the
      # standard flow, or `email_or_phone` (no password) for the passwordless OTP flow.
      # When the account has MFA enabled — or on the first passwordless step — an OTP
      # challenge is issued and the response is a 200
      # `{"pending_2fa": true, "destination_hint": "…"}`; resubmit the same credentials
      # plus `two_factor_token` to complete sign-in and receive a session with a freshly
      # minted access/refresh token pair. Domain failures surface as the normalized
      # error envelope with an `app_error_code`: 401 `invalid_credentials`; 403
      # `user_type_not_allowed` or `auth_user_disabled`; 409 `no_organization`; 429
      # `otp_cooldown`.
      #
      # @overload login(email_or_phone:, user_type:, app_name: nil, app_version: nil, password: nil, two_factor_token: nil, request_options: {})
      #
      # @param email_or_phone [String]
      #
      # @param user_type [Symbol, VitableConnect::Models::AuthLoginParams::UserType] - `Member` - Member
      #
      # @param app_name [String]
      #
      # @param app_version [String]
      #
      # @param password [String]
      #
      # @param two_factor_token [String]
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::AuthLoginResponse]
      #
      # @see VitableConnect::Models::AuthLoginParams
      def login(params)
        parsed, options = VitableConnect::AuthLoginParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/auth/login",
          body: parsed,
          model: VitableConnect::Models::AuthLoginResponse,
          security: {api_key_auth: true},
          options: options
        )
      end

      # Returns the authenticated caller's IdP identity (email, name, provider).
      # Identity-only — no persona (persona selection is `/v1/auth/personas`);
      # organization membership and companies are fetched via dedicated endpoints.
      #
      # @overload retrieve_me(request_options: {})
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::AuthRetrieveMeResponse]
      #
      # @see VitableConnect::Models::AuthRetrieveMeParams
      def retrieve_me(params = {})
        @client.request(
          method: :get,
          path: "v1/auth/me",
          model: VitableConnect::Models::AuthRetrieveMeResponse,
          security: {identity_provider_bearer: true},
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {VitableConnect::Models::AuthSignUpParams} for more details.
      #
      # Validates the IdP bearer and resolves the session. An optional `user_type` body
      # field pins resolution to a single persona (strict login). Domain failures
      # surface as the normalized error envelope with an `app_error_code`: 409
      # `profile_required` (no BaseUser yet) / `no_organization` / `needs_selection`
      # (fetch candidates via `/personas`) / `identity_conflict`; 403
      # `email_verification_required` / `user_type_not_allowed`; 404
      # `persona_not_found`.
      #
      # @overload sign_up(user_type: nil, request_options: {})
      #
      # @param user_type [Symbol, VitableConnect::Models::AuthSignUpParams::UserType, nil] - `Member` - Member
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::AuthSignUpResponse]
      #
      # @see VitableConnect::Models::AuthSignUpParams
      def sign_up(params = {})
        parsed, options = VitableConnect::AuthSignUpParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/auth/sign-up",
          body: parsed,
          model: VitableConnect::Models::AuthSignUpResponse,
          security: {identity_provider_bearer: true},
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
