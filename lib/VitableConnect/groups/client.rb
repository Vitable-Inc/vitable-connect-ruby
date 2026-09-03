# frozen_string_literal: true

module VitableConnect
  module Groups
    class Client
      # @param client [VitableConnect::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns a paginated list of groups belonging to the authenticated organization.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :limit
      # @option params [Integer, nil] :page
      #
      # @example
      #   client.groups.list(
      #     limit: 20,
      #     page: 1
      #   )
      #
      # @return [VitableConnect::Types::GroupListResponse]
      def list(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["page"] = params[:page] if params.key?(:page)

        VitableConnect::Internal::OffsetItemIterator.new(
          initial_page: query_params["page"],
          item_field: :data,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["page"] = next_page
          request = VitableConnect::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/groups",
            query: query_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise VitableConnect::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            parsed_response = VitableConnect::Types::GroupListResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Creates a new group scoped to the authenticated organization.
      #
      # @param request_options [Hash]
      # @param params [VitableConnect::Groups::Types::CreateGroupRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.groups.create(
      #     name: "Tier 1",
      #     external_reference_id: "mol_seg_001"
      #   )
      #
      # @return [VitableConnect::Types::GroupResponse]
      def create(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/groups",
          body: VitableConnect::Groups::Types::CreateGroupRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::GroupResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a single group by its prefixed ID. Returns 404 if the group does not belong to the authenticated
      # organization.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::GroupID] :group_id
      #
      # @example
      #   client.groups.get(group_id: "grp_abc123def456")
      #
      # @return [VitableConnect::Types::GroupResponse]
      def get(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/groups/#{URI.encode_uri_component(params[:group_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::GroupResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Partially updates a group's name or external reference ID. Returns 404 if the group does not belong to the
      # authenticated organization.
      #
      # @param request_options [Hash]
      # @param params [VitableConnect::Groups::Types::PatchedUpdateGroupRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::GroupID] :group_id
      #
      # @example
      #   client.groups.update(
      #     group_id: "grp_abc123def456",
      #     name: "Tier 1 (renamed)",
      #     external_reference_id: "mol_seg_001_v2"
      #   )
      #
      # @return [VitableConnect::Types::GroupResponse]
      def update(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request_data = VitableConnect::Groups::Types::PatchedUpdateGroupRequest.new(params).to_h
        non_body_param_names = %w[group_id]
        body = request_data.except(*non_body_param_names)

        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "v1/groups/#{URI.encode_uri_component(params[:group_id].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::GroupResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @return [VitableConnect::Members::Client]
      def members
        @members ||= VitableConnect::Groups::Members::Client.new(client: @client)
      end
    end
  end
end
