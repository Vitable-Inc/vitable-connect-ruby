# frozen_string_literal: true

module VitableConnect
  module Groups
    module Types
      class GetGroupsRequest < Internal::Types::Model
        field :group_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
