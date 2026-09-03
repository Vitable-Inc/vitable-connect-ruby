# frozen_string_literal: true

module VitableConnect
  module Groups
    module Types
      class PatchedUpdateGroupRequest < Internal::Types::Model
        field :group_id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :external_reference_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
