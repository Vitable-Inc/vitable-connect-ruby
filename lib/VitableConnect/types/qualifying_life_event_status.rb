# frozen_string_literal: true

module VitableConnect
  module Types
    module QualifyingLifeEventStatus
      extend VitableConnect::Internal::Types::Enum

      PENDING = "pending"
      APPROVED = "approved"
      DENIED = "denied"
    end
  end
end
