# typed: strong

module VitableConnect
  module Resources
    class Organizations
      # Onboards the authenticated user's partner Organization: creates the local
      # Organization + the creator's admin membership atomically, then mirrors it to
      # WorkOS (creates the WorkOS org and binds the creator as admin). 409
      # `organization_already_exists` when the user already has an organization (v0: one
      # organization per user).
      sig do
        params(
          name: String,
          type:
            T.nilable(VitableConnect::OrganizationCreateParams::Type::OrSymbol),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::OrganizationCreateResponse)
      end
      def create(
        name:,
        # - `BROKERAGE` - BROKERAGE
        # - `TPA` - TPA
        # - `GENERAL_AGENT` - GENERAL_AGENT
        # - `CHANNEL_PARTNER` - CHANNEL_PARTNER
        # - `CONSULTING_FIRM` - CONSULTING_FIRM
        # - `API_PLATFORM` - API_PLATFORM
        type: nil,
        request_options: {}
      )
      end

      # Lists the organizations the authenticated caller is an active member of
      # (paginated). Returns an empty list when the caller belongs to no organizations.
      sig do
        params(request_options: VitableConnect::RequestOptions::OrHash).returns(
          VitableConnect::Models::OrganizationListResponse
        )
      end
      def list(request_options: {})
      end

      # @api private
      sig { params(client: VitableConnect::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
