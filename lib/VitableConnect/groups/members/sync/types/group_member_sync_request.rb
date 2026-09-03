# frozen_string_literal: true

module VitableConnect
  module Groups
    module Members
      module Sync
        module Types
          class GroupMemberSyncRequest < Internal::Types::Model
            field :group_id, -> { String }, optional: false, nullable: false

            field :members, -> { Internal::Types::Array[VitableConnect::Types::GroupMemberSyncMemberRequest] }, optional: false, nullable: false
          end
        end
      end
    end
  end
end
