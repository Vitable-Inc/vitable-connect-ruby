# frozen_string_literal: true

module VitableConnect
  module Types
    class GroupMemberSyncResponse < Internal::Types::Model
      field :request_id, -> { String }, optional: false, nullable: false

      field :group_id, -> { String }, optional: false, nullable: false

      field :accepted_at, -> { String }, optional: false, nullable: false
    end
  end
end
