# typed: strong

module VitableConnect
  module Resources
    class Groups
      class Members
        class Sync
          # Retrieves a previously-submitted group member sync request by its `grpmsr_` ID.
          # Returns the acceptance timestamp, completion timestamp (if processing has
          # finished), and the per-member `results` once available. While processing is in
          # flight, `completed_at` and `results` are `null`.
          sig do
            params(
              request_id: String,
              group_id: String,
              request_options: VitableConnect::RequestOptions::OrHash
            ).returns(
              VitableConnect::Models::Groups::Members::SyncRetrieveResponse
            )
          end
          def retrieve(
            request_id,
            # Unique group identifier (grp\_\*)
            group_id:,
            request_options: {}
          )
          end

          # Submits a member sync payload for the specified group. Members in the payload
          # will be queued for processing asynchronously. Returns HTTP 202 with the batch ID
          # and acceptance timestamp.
          sig do
            params(
              group_id: String,
              members:
                T::Array[
                  VitableConnect::Groups::Members::SyncSubmitParams::Member::OrHash
                ],
              request_options: VitableConnect::RequestOptions::OrHash
            ).returns(
              VitableConnect::Models::Groups::Members::SyncSubmitResponse
            )
          end
          def submit(
            # Unique group identifier (grp\_\*)
            group_id,
            members:,
            request_options: {}
          )
          end

          # @api private
          sig do
            params(client: VitableConnect::Client).returns(T.attached_class)
          end
          def self.new(client:)
          end
        end
      end
    end
  end
end
