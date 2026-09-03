# frozen_string_literal: true

module VitableConnect
  module Types
    # Wire serializer for :class:`HouseholdMemberDTO` (one household participant).
    class HouseholdMember < Internal::Types::Model
      field :member_id, -> { String }, optional: true, nullable: false

      field :first_name, -> { String }, optional: false, nullable: false

      field :last_name, -> { String }, optional: false, nullable: false

      field :relationship, -> { VitableConnect::Types::HouseholdMemberRelationship }, optional: true, nullable: false

      field :member_type, -> { VitableConnect::Types::HouseholdMemberType }, optional: false, nullable: false

      field :date_of_birth, -> { String }, optional: false, nullable: false

      field :household_admin_in, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
