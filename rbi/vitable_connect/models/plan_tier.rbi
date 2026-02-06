# typed: strong

module VitableConnect
  module Models
    # - `Bronze` - Bronze
    # - `Silver` - Silver
    # - `Gold` - Gold
    # - `Platinum` - Platinum
    module PlanTier
      extend VitableConnect::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, VitableConnect::PlanTier) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BRONZE = T.let(:Bronze, VitableConnect::PlanTier::TaggedSymbol)
      SILVER = T.let(:Silver, VitableConnect::PlanTier::TaggedSymbol)
      GOLD = T.let(:Gold, VitableConnect::PlanTier::TaggedSymbol)
      PLATINUM = T.let(:Platinum, VitableConnect::PlanTier::TaggedSymbol)

      sig { override.returns(T::Array[VitableConnect::PlanTier::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
