# frozen_string_literal: true

module VitableConnect
  module Types
    class GroupMemberSyncRequestDetail < Internal::Types::Model
      field :request_id, -> { String }, optional: false, nullable: false

      field :group_id, -> { String }, optional: false, nullable: false

      field :accepted_at, -> { String }, optional: false, nullable: false

      field :completed_at, -> { String }, optional: false, nullable: true

      field :results, -> { VitableConnect::Types::GroupMemberSyncResults }, optional: false, nullable: true
    end
  end
end
