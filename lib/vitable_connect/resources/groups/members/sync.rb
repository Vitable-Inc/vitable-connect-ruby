# frozen_string_literal: true

module VitableConnect
  module Resources
    class Groups
      class Members
        class Sync
          # Retrieves a previously-submitted group member sync request by its `grpmsr_` ID.
          # Returns the acceptance timestamp, completion timestamp (if processing has
          # finished), and the per-member `results` once available. While processing is in
          # flight, `completed_at` and `results` are `null`.
          #
          # @overload retrieve(request_id, group_id:, request_options: {})
          #
          # @param request_id [String]
          #
          # @param group_id [String] Unique group identifier (grp\_\*)
          #
          # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [VitableConnect::Models::Groups::Members::SyncRetrieveResponse]
          #
          # @see VitableConnect::Models::Groups::Members::SyncRetrieveParams
          def retrieve(request_id, params)
            parsed, options = VitableConnect::Groups::Members::SyncRetrieveParams.dump_request(params)
            group_id =
              parsed.delete(:group_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["v1/groups/%1$s/members/sync/%2$s", group_id, request_id],
              model: VitableConnect::Models::Groups::Members::SyncRetrieveResponse,
              options: options
            )
          end

          # Submits a member sync payload for the specified group. Members in the payload
          # will be queued for processing asynchronously. Returns HTTP 202 with the batch ID
          # and acceptance timestamp.
          #
          # @overload submit(group_id, members:, request_options: {})
          #
          # @param group_id [String] Unique group identifier (grp\_\*)
          #
          # @param members [Array<VitableConnect::Models::Groups::Members::SyncSubmitParams::Member>]
          #
          # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [VitableConnect::Models::Groups::Members::SyncSubmitResponse]
          #
          # @see VitableConnect::Models::Groups::Members::SyncSubmitParams
          def submit(group_id, params)
            parsed, options = VitableConnect::Groups::Members::SyncSubmitParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["v1/groups/%1$s/members/sync", group_id],
              body: parsed,
              model: VitableConnect::Models::Groups::Members::SyncSubmitResponse,
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
  end
end
