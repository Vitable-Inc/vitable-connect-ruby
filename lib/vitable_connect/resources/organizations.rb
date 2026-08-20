# frozen_string_literal: true

module VitableConnect
  module Resources
    class Organizations
      # Some parameter documentations has been truncated, see
      # {VitableConnect::Models::OrganizationCreateParams} for more details.
      #
      # Onboards the authenticated user's partner Organization: creates the local
      # Organization + the creator's admin membership atomically, then mirrors it to
      # WorkOS (creates the WorkOS org and binds the creator as admin). 409
      # `organization_already_exists` when the user already has an organization (v0: one
      # organization per user).
      #
      # @overload create(name:, type: nil, request_options: {})
      #
      # @param name [String]
      #
      # @param type [Symbol, VitableConnect::Models::OrganizationCreateParams::Type, nil] - `BROKERAGE` - BROKERAGE
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::OrganizationCreateResponse]
      #
      # @see VitableConnect::Models::OrganizationCreateParams
      def create(params)
        parsed, options = VitableConnect::OrganizationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/organizations",
          body: parsed,
          model: VitableConnect::Models::OrganizationCreateResponse,
          security: {},
          options: options
        )
      end

      # Lists the organizations the authenticated caller is an active member of
      # (paginated). Returns an empty list when the caller belongs to no organizations.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::OrganizationListResponse]
      #
      # @see VitableConnect::Models::OrganizationListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "v1/organizations",
          model: VitableConnect::Models::OrganizationListResponse,
          security: {},
          options: params[:request_options]
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
