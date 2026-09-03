# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single group member sync detail resource.
    class GroupMemberSyncDetailResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::GroupMemberSyncResponse }, optional: false, nullable: false
    end
  end
end
