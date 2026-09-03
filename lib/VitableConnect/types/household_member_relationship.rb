# frozen_string_literal: true

module VitableConnect
  module Types
    module HouseholdMemberRelationship
      extend VitableConnect::Internal::Types::Enum

      CHILD = "Child"
      SPOUSE = "Spouse"
      ROOMMATE = "Roommate"
      OTHER = "Other"
    end
  end
end
