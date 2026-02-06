# frozen_string_literal: true

module VitableConnect
  module Models
    # - `Bronze` - Bronze
    # - `Silver` - Silver
    # - `Gold` - Gold
    # - `Platinum` - Platinum
    module PlanTier
      extend VitableConnect::Internal::Type::Enum

      BRONZE = :Bronze
      SILVER = :Silver
      GOLD = :Gold
      PLATINUM = :Platinum

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
