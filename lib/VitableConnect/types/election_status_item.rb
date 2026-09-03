# frozen_string_literal: true

module VitableConnect
  module Types
    module ElectionStatusItem
      extend VitableConnect::Internal::Types::Enum

      ENROLLED = "Enrolled"
      EXPIRED = "Expired"
      PENDING = "Pending"
      WAIVED = "Waived"
    end
  end
end
