# frozen_string_literal: true

module VitableConnect
  module Types
    module PlanYearEnrollmentElectionStatus
      extend VitableConnect::Internal::Types::Enum

      ENROLLED = "Enrolled"
      WAIVED = "Waived"
      PENDING = "Pending"
      EXPIRED = "Expired"
    end
  end
end
