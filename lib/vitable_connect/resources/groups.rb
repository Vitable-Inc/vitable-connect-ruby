# frozen_string_literal: true

module VitableConnect
  module Resources
    class Groups
      # @return [VitableConnect::Resources::Groups::Members]
      attr_reader :members

      # Creates a new group scoped to the authenticated organization.
      #
      # @overload create(external_reference_id:, name:, request_options: {})
      #
      # @param external_reference_id [String]
      # @param name [String]
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::GroupResponse]
      #
      # @see VitableConnect::Models::GroupCreateParams
      def create(params)
        parsed, options = VitableConnect::GroupCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/groups",
          body: parsed,
          model: VitableConnect::GroupResponse,
          options: options
        )
      end

      # Retrieves a single group by its prefixed ID. Returns 404 if the group does not
      # belong to the authenticated organization.
      #
      # @overload retrieve(group_id, request_options: {})
      #
      # @param group_id [String] Unique group identifier (grp\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::GroupResponse]
      #
      # @see VitableConnect::Models::GroupRetrieveParams
      def retrieve(group_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/groups/%1$s", group_id],
          model: VitableConnect::GroupResponse,
          options: params[:request_options]
        )
      end

      # Partially updates a group's name or external reference ID. Returns 404 if the
      # group does not belong to the authenticated organization.
      #
      # @overload update(group_id, external_reference_id: nil, name: nil, request_options: {})
      #
      # @param group_id [String] Unique group identifier (grp\_\*)
      #
      # @param external_reference_id [String, nil]
      #
      # @param name [String, nil]
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::GroupResponse]
      #
      # @see VitableConnect::Models::GroupUpdateParams
      def update(group_id, params = {})
        parsed, options = VitableConnect::GroupUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/groups/%1$s", group_id],
          body: parsed,
          model: VitableConnect::GroupResponse,
          options: options
        )
      end

      # Returns a paginated list of groups belonging to the authenticated organization.
      #
      # @overload list(limit: nil, page: nil, request_options: {})
      #
      # @param limit [Integer] Items per page (default: 20, max: 100)
      #
      # @param page [Integer] Page number (default: 1)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Internal::PageNumberPage<VitableConnect::Models::Group>]
      #
      # @see VitableConnect::Models::GroupListParams
      def list(params = {})
        parsed, options = VitableConnect::GroupListParams.dump_request(params)
        query = VitableConnect::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/groups",
          query: query,
          page: VitableConnect::Internal::PageNumberPage,
          model: VitableConnect::Group,
          options: options
        )
      end

      # @api private
      #
      # @param client [VitableConnect::Client]
      def initialize(client:)
        @client = client
        @members = VitableConnect::Resources::Groups::Members.new(client: client)
      end
    end
  end
end
