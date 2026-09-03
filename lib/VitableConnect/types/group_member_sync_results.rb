# frozen_string_literal: true

module VitableConnect
  module Types
    class GroupMemberSyncResults < Internal::Types::Model
      field :added_group_member_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :removed_group_member_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :failures, -> { Internal::Types::Array[VitableConnect::Types::GroupMemberSyncFailure] }, optional: false, nullable: false
    end
  end
end
