# frozen_string_literal: true

module VitableConnect
  module Types
    module PayrollAccessMethod
      extend VitableConnect::Internal::Types::Enum

      SELF_SETUP = "SELF_SETUP"
      NEEDS_HELP = "NEEDS_HELP"
    end
  end
end
