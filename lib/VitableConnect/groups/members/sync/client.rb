# frozen_string_literal: true

module VitableConnect
  module Groups
    module Members
      module Sync
        class Client
          # @param client [VitableConnect::Internal::Http::RawClient]
          #
          # @return [void]
          def initialize(client:)
            @client = client
          end

          # Submits a member sync payload for the specified group. Members in the payload will be queued for processing
          # asynchronously. Returns HTTP 202 with the batch ID and acceptance timestamp.
          #
          # @param request_options [Hash]
          # @param params [VitableConnect::Groups::Members::Sync::Types::GroupMemberSyncRequest]
          # @option request_options [String] :base_url
          # @option request_options [Hash{String => Object}] :additional_headers
          # @option request_options [Hash{String => Object}] :additional_query_parameters
          # @option request_options [Hash{String => Object}] :additional_body_parameters
          # @option request_options [Integer] :timeout_in_seconds
          # @option params [VitableConnect::Types::GroupID] :group_id
          #
          # @example
          #   client.groups.members.sync.submit(
          #     group_id: "grp_abc123def456",
          #     members: [{
          #       reference_id: "EMP-001",
          #       first_name: "Jane",
          #       last_name: "Doe",
          #       date_of_birth: "1990-05-15",
          #       phone: "4155550100",
          #       plan_id: "pln_abc123def456",
          #       address: {
          #         address_line1: "123 Main Street",
          #         address_line2: "Apt 4B",
          #         city: "San Francisco",
          #         state: "CA",
          #         zipcode: "94102"
          #       },
          #       email: "jane.doe@acme.com"
          #     }]
          #   )
          #
          # @return [VitableConnect::Types::GroupMemberSyncDetailResponse]
          def submit(request_options: {}, **params)
            params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
            request_data = VitableConnect::Groups::Members::Sync::Types::GroupMemberSyncRequest.new(params).to_h
            non_body_param_names = %w[group_id]
            body = request_data.except(*non_body_param_names)

            request = VitableConnect::Internal::JSON::Request.new(
              base_url: request_options[:base_url],
              method: "POST",
              path: "v1/groups/#{URI.encode_uri_component(params[:group_id].to_s)}/members/sync",
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
              VitableConnect::Types::GroupMemberSyncDetailResponse.load(response.body)
            else
              error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
              raise error_class.new(response.body, code: code)
            end
          end

          # Retrieves a previously-submitted group member sync request by its `grpmsr_` ID. Returns the acceptance
          # timestamp, completion timestamp (if processing has finished), and the per-member `results` once available.
          # While processing is in flight, `completed_at` and `results` are `null`.
          #
          # @param request_options [Hash]
          # @param params [Hash]
          # @option request_options [String] :base_url
          # @option request_options [Hash{String => Object}] :additional_headers
          # @option request_options [Hash{String => Object}] :additional_query_parameters
          # @option request_options [Hash{String => Object}] :additional_body_parameters
          # @option request_options [Integer] :timeout_in_seconds
          # @option params [VitableConnect::Types::GroupID] :group_id
          # @option params [VitableConnect::Types::RequestID] :request_id
          #
          # @example
          #   client.groups.members.sync.get(
          #     group_id: "grp_abc123def456",
          #     request_id: "request_id"
          #   )
          #
          # @return [VitableConnect::Types::GroupMemberSyncRequestDetailResponse]
          def get(request_options: {}, **params)
            params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
            request = VitableConnect::Internal::JSON::Request.new(
              base_url: request_options[:base_url],
              method: "GET",
              path: "v1/groups/#{URI.encode_uri_component(params[:group_id].to_s)}/members/sync/#{URI.encode_uri_component(params[:request_id].to_s)}",
              request_options: request_options
            )
            begin
              response = @client.send(request)
            rescue Net::HTTPRequestTimeout
              raise VitableConnect::Errors::TimeoutError
            end
            code = response.code.to_i
            if code.between?(200, 299)
              VitableConnect::Types::GroupMemberSyncRequestDetailResponse.load(response.body)
            else
              error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
              raise error_class.new(response.body, code: code)
            end
          end
        end
      end
    end
  end
end
