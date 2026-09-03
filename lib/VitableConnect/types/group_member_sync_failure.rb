# frozen_string_literal: true

module VitableConnect
  module Types
    class GroupMemberSyncFailure < Internal::Types::Model
      field :reference_id, -> { String }, optional: false, nullable: false

      field :operation, -> { VitableConnect::Types::Operation }, optional: false, nullable: false

      field :reason, -> { String }, optional: false, nullable: false
    end
  end
end
