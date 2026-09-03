# frozen_string_literal: true

module VitableConnect
  module Types
    module EmployeeStatus
      extend VitableConnect::Internal::Types::Enum

      ACTIVE = "active"
      TERMINATED = "terminated"
    end
  end
end
