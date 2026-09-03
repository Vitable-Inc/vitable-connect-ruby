# frozen_string_literal: true

module VitableConnect
  module Types
    module TerminationRule
      extend VitableConnect::Internal::Types::Enum

      END_OF_N_MONTHS = "END_OF_N_MONTHS"
      END_OF_PLAN_YEAR = "END_OF_PLAN_YEAR"
    end
  end
end
