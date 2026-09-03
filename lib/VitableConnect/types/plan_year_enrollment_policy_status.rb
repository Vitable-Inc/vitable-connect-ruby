# frozen_string_literal: true

module VitableConnect
  module Types
    module PlanYearEnrollmentPolicyStatus
      extend VitableConnect::Internal::Types::Enum

      COVERAGE_UPCOMING = "Coverage Upcoming"
      COVERAGE_EFFECTIVE = "Coverage Effective"
      COVERAGE_ENDED = "Coverage Ended"
      CANCELLED = "Cancelled"
    end
  end
end
