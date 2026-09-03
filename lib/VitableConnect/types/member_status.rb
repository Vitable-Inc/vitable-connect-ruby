# frozen_string_literal: true

module VitableConnect
  module Types
    module MemberStatus
      extend VitableConnect::Internal::Types::Enum

      ONBOARDED = "onboarded"
      PENDING_ONBOARDING = "pending_onboarding"
    end
  end
end
