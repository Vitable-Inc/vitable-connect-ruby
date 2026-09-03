# frozen_string_literal: true

module VitableConnect
  module Members
    module Types
      class GetHouseholdMembersRequest < Internal::Types::Model
        field :member_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
