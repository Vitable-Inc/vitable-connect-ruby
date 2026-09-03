# frozen_string_literal: true

module VitableConnect
  module Types
    module EnrollmentStatus
      extend VitableConnect::Internal::Types::Enum

      PENDING = "pending"
      ENROLLED = "enrolled"
      WAIVED = "waived"
      INACTIVE = "inactive"
    end
  end
end
