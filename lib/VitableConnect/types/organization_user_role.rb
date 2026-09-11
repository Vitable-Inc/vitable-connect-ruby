# frozen_string_literal: true

module VitableConnect
  module Types
    module OrganizationUserRole
      extend VitableConnect::Internal::Types::Enum

      ADMIN = "ADMIN"
      OPERATIONS = "OPERATIONS"
      SALES = "SALES"
      ENROLLMENT_AGENT = "ENROLLMENT_AGENT"
    end
  end
end
