# frozen_string_literal: true

module VitableConnect
  module Types
    module HrisStatusItem
      extend VitableConnect::Internal::Types::Enum

      PENDING = "Pending"
      ACTIVE = "Active"
      INACTIVE = "Inactive"
      PAUSED = "Paused"
      TERMINATED = "Terminated"
    end
  end
end
