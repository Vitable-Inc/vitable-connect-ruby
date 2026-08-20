# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Organizations#create
    class OrganizationCreateResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute id
      #   Prefixed organization identifier (`org_<base64-encoded-uuid>`).
      #
      #   @return [String]
      required :id, String

      # @!attribute idp_org_id
      #   IdP-issued tenant id (WorkOS org id).
      #
      #   @return [String, nil]
      required :idp_org_id, String, nil?: true

      # @!attribute idp_provider
      #   - `workos` - WorkOS
      #   - `vitable` - Vitable
      #
      #   @return [Symbol, VitableConnect::Models::OrganizationCreateResponse::IdpProvider, nil]
      required :idp_provider,
               enum: -> { VitableConnect::Models::OrganizationCreateResponse::IdpProvider },
               nil?: true

      # @!attribute name
      #   Human-readable organization name.
      #
      #   @return [String]
      required :name, String

      # @!attribute super_in
      #   Whether this organization reads across every organization.
      #
      #   @return [Boolean]
      required :super_in, VitableConnect::Internal::Type::Boolean

      # @!attribute type
      #   - `BROKERAGE` - Brokerage
      #   - `TPA` - TPA
      #   - `GENERAL_AGENT` - General Agent
      #   - `CHANNEL_PARTNER` - Channel Partner
      #   - `CONSULTING_FIRM` - Consulting Firm
      #   - `API_PLATFORM` - API Platform
      #
      #   @return [Symbol, VitableConnect::Models::OrganizationCreateResponse::Type, nil]
      required :type, enum: -> { VitableConnect::Models::OrganizationCreateResponse::Type }, nil?: true

      # @!method initialize(id:, idp_org_id:, idp_provider:, name:, super_in:, type:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::OrganizationCreateResponse} for more details.
      #
      #   @param id [String] Prefixed organization identifier (`org_<base64-encoded-uuid>`).
      #
      #   @param idp_org_id [String, nil] IdP-issued tenant id (WorkOS org id).
      #
      #   @param idp_provider [Symbol, VitableConnect::Models::OrganizationCreateResponse::IdpProvider, nil] - `workos` - WorkOS
      #
      #   @param name [String] Human-readable organization name.
      #
      #   @param super_in [Boolean] Whether this organization reads across every organization.
      #
      #   @param type [Symbol, VitableConnect::Models::OrganizationCreateResponse::Type, nil] - `BROKERAGE` - Brokerage

      # - `workos` - WorkOS
      # - `vitable` - Vitable
      #
      # @see VitableConnect::Models::OrganizationCreateResponse#idp_provider
      module IdpProvider
        extend VitableConnect::Internal::Type::Enum

        WORKOS = :workos
        VITABLE = :vitable

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # - `BROKERAGE` - Brokerage
      # - `TPA` - TPA
      # - `GENERAL_AGENT` - General Agent
      # - `CHANNEL_PARTNER` - Channel Partner
      # - `CONSULTING_FIRM` - Consulting Firm
      # - `API_PLATFORM` - API Platform
      #
      # @see VitableConnect::Models::OrganizationCreateResponse#type
      module Type
        extend VitableConnect::Internal::Type::Enum

        BROKERAGE = :BROKERAGE
        TPA = :TPA
        GENERAL_AGENT = :GENERAL_AGENT
        CHANNEL_PARTNER = :CHANNEL_PARTNER
        CONSULTING_FIRM = :CONSULTING_FIRM
        API_PLATFORM = :API_PLATFORM

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
