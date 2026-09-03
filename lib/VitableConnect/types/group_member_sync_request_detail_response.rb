# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single group member sync request detail resource.
    class GroupMemberSyncRequestDetailResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::GroupMemberSyncRequestDetail }, optional: false, nullable: false
    end
  end
end
