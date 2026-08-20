# typed: strong

module VitableConnect
  module Resources
    class Auth
      # Collects the required profile fields (first_name, last_name, phone) for a
      # verified IdP identity and provisions the asclepius user: creates the BaseUser
      # (of the app-context's user_type, with the real phone) + the OrganizationUser
      # persona (name). An optional `user_type` narrows provisioning/resolution to a
      # single persona type. When a same-email account already exists (verified email)
      # it links + finishes that account instead. Returns the auth session. Domain
      # failures surface as the normalized error envelope with an `app_error_code`: 403
      # `email_verification_required` / `user_type_not_allowed`; 409 `identity_conflict`
      # / `needs_selection` (fetch candidates via `/personas`); 422 `invalid_phone`.
      sig do
        params(
          first_name: String,
          last_name: String,
          phone: String,
          user_type:
            VitableConnect::AuthCompleteProfileParams::UserType::OrSymbol,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::AuthCompleteProfileResponse)
      end
      def complete_profile(
        first_name:,
        last_name:,
        phone:,
        # - `Member` - Member
        # - `NursePractitioner` - Provider
        # - `CompanyAdmin` - Company Admin
        # - `VitableAdmin` - Vitable Admin
        # - `ClinicalAdmin` - Clinical Admin
        # - `PartnerEmployee` - Partner Employee
        # - `OrganizationUser` - Organization User
        # - `ExternalAdmin` - External Admin
        user_type: nil,
        request_options: {}
      )
      end

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

      # Returns the personas linked to the bearer's IdP identity that the current
      # application is allowed to serve — the candidate set for a 'continue as'
      # selection when sign-up returns `needs_selection`. Single-type apps usually get 0
      # or 1 entry.
      sig do
        params(request_options: VitableConnect::RequestOptions::OrHash).returns(
          T::Array[VitableConnect::Models::AuthListPersonasResponseItem]
        )
      end
      def list_personas(request_options: {})
      end

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
      sig do
        params(
          email_or_phone: String,
          user_type: VitableConnect::AuthLoginParams::UserType::OrSymbol,
          app_name: String,
          app_version: String,
          password: String,
          two_factor_token: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::AuthLoginResponse)
      end
      def login(
        email_or_phone:,
        # - `Member` - Member
        # - `NursePractitioner` - Provider
        # - `CompanyAdmin` - Company Admin
        # - `VitableAdmin` - Vitable Admin
        # - `ClinicalAdmin` - Clinical Admin
        # - `PartnerEmployee` - Partner Employee
        # - `OrganizationUser` - Organization User
        # - `ExternalAdmin` - External Admin
        user_type:,
        app_name: nil,
        app_version: nil,
        password: nil,
        two_factor_token: nil,
        request_options: {}
      )
      end

      # Returns the authenticated caller's IdP identity (email, name, provider).
      # Identity-only — no persona (persona selection is `/v1/auth/personas`);
      # organization membership and companies are fetched via dedicated endpoints.
      sig do
        params(request_options: VitableConnect::RequestOptions::OrHash).returns(
          VitableConnect::Models::AuthRetrieveMeResponse
        )
      end
      def retrieve_me(request_options: {})
      end

      # Validates the IdP bearer and resolves the session. An optional `user_type` body
      # field pins resolution to a single persona (strict login). Domain failures
      # surface as the normalized error envelope with an `app_error_code`: 409
      # `profile_required` (no BaseUser yet) / `no_organization` / `needs_selection`
      # (fetch candidates via `/personas`) / `identity_conflict`; 403
      # `email_verification_required` / `user_type_not_allowed`; 404
      # `persona_not_found`.
      sig do
        params(
          user_type:
            T.nilable(VitableConnect::AuthSignUpParams::UserType::OrSymbol),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::AuthSignUpResponse)
      end
      def sign_up(
        # - `Member` - Member
        # - `NursePractitioner` - NursePractitioner
        # - `CompanyAdmin` - CompanyAdmin
        # - `VitableAdmin` - VitableAdmin
        # - `ClinicalAdmin` - ClinicalAdmin
        # - `PartnerEmployee` - PartnerEmployee
        # - `OrganizationUser` - OrganizationUser
        # - `ExternalAdmin` - ExternalAdmin
        user_type: nil,
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
