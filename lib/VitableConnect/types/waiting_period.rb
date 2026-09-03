# frozen_string_literal: true

module VitableConnect
  module Types
    module WaitingPeriod
      extend VitableConnect::Internal::Types::Enum

      FIRST_OF_FOLLOWING_MONTH = "FIRST_OF_FOLLOWING_MONTH"
      THIRTY_DAYS = "THIRTY_DAYS"
      SIXTY_DAYS = "SIXTY_DAYS"
    end
  end
end
