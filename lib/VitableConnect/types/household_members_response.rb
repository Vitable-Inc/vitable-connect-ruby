# frozen_string_literal: true

module VitableConnect
  module Types
    # Unpaginated ``{"data": [...]}`` list of the members of a member's household.
    class HouseholdMembersResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[VitableConnect::Types::HouseholdMember] }, optional: false, nullable: false
    end
  end
end
