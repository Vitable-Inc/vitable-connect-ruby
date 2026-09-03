# frozen_string_literal: true

module VitableConnect
  module Types
    module HouseholdMemberType
      extend VitableConnect::Internal::Types::Enum

      ACCOUNT_HOLDER = "Account Holder"
      DEPENDENT = "Dependent"
      INACTIVE = "Inactive"
    end
  end
end
