# frozen_string_literal: true

module VitableConnect
  module Types
    module BenefitStatus
      extend VitableConnect::Internal::Types::Enum

      ACTIVE = "active"
      UPCOMING = "upcoming"
      OPEN_ENROLLMENT = "open_enrollment"
      INACTIVE = "inactive"
    end
  end
end
