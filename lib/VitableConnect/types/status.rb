# frozen_string_literal: true

module VitableConnect
  module Types
    module Status
      extend VitableConnect::Internal::Types::Enum

      APPROVED = "approved"
      DENIED = "denied"
      PENDING = "pending"
    end
  end
end
