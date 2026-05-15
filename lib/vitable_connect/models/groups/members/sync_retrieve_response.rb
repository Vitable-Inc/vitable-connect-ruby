# frozen_string_literal: true

module VitableConnect
  module Models
    module Groups
      module Members
        # @see VitableConnect::Resources::Groups::Members::Sync#retrieve
        class SyncRetrieveResponse < VitableConnect::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data]
          required :data, -> { VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data }

          # @!method initialize(data:)
          #   Response containing a single group member sync request detail resource.
          #
          #   @param data [VitableConnect::Models::Groups::Members::SyncRetrieveResponse::Data]

          # @see VitableConnect::Models::Groups::Members::SyncRetrieveResponse#data
          class Data < VitableConnect::Internal::Type::BaseModel
            # @!attribute accepted_at
            #
            #   @return [Time]
            required :accepted_at, Time

            # @!attribute completed_at
            #
            #   @return [Time, nil]
            required :completed_at, Time, nil?: true

            # @!attribute group_id
            #
            #   @return [String]
            required :group_id, String

            # @!attribute request_id
            #
            #   @return [String]
            required :request_id, String

            # @!attribute results
            #
            #   @return [Object]
            required :results, VitableConnect::Internal::Type::Unknown

            # @!method initialize(accepted_at:, completed_at:, group_id:, request_id:, results:)
            #   @param accepted_at [Time]
            #   @param completed_at [Time, nil]
            #   @param group_id [String]
            #   @param request_id [String]
            #   @param results [Object]
          end
        end
      end
    end
  end
end
