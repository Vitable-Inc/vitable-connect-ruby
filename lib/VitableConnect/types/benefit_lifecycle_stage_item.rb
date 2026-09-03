# frozen_string_literal: true

module VitableConnect
  module Types
    module BenefitLifecycleStageItem
      extend VitableConnect::Internal::Types::Enum

      OPEN_ENROLLMENT = "open_enrollment"
      RENEWAL = "renewal"
      ACTIVE = "active"
      ONBOARDING = "onboarding"
      CANCELLED = "cancelled"
    end
  end
end
