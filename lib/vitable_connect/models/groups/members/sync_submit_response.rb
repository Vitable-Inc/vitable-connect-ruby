# frozen_string_literal: true

module VitableConnect
  module Models
    module Groups
      module Members
        # @see VitableConnect::Resources::Groups::Members::Sync#submit
        class SyncSubmitResponse < VitableConnect::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [VitableConnect::Models::Groups::Members::SyncSubmitResponse::Data]
          required :data, -> { VitableConnect::Models::Groups::Members::SyncSubmitResponse::Data }

          # @!method initialize(data:)
          #   Response containing a single group member sync detail resource.
          #
          #   @param data [VitableConnect::Models::Groups::Members::SyncSubmitResponse::Data]

          # @see VitableConnect::Models::Groups::Members::SyncSubmitResponse#data
          class Data < VitableConnect::Internal::Type::BaseModel
            # @!attribute accepted_at
            #
            #   @return [Time]
            required :accepted_at, Time

            # @!attribute group_id
            #
            #   @return [String]
            required :group_id, String

            # @!attribute request_id
            #
            #   @return [String]
            required :request_id, String

            # @!method initialize(accepted_at:, group_id:, request_id:)
            #   @param accepted_at [Time]
            #   @param group_id [String]
            #   @param request_id [String]
          end
        end
      end
    end
  end
end
