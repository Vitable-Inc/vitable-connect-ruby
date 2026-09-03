# frozen_string_literal: true

module VitableConnect
  module Types
    module CardType
      extend VitableConnect::Internal::Types::Enum

      MEDICAL = "medical"
      DENTAL = "dental"
      VISION = "vision"
      RX = "rx"
    end
  end
end
