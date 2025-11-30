# typed: strong

module VitableConnectAPI
  module Models
    # - `Bronze` - Bronze
    # - `Silver` - Silver
    # - `Gold` - Gold
    # - `Platinum` - Platinum
    module PlanTier
      extend VitableConnectAPI::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, VitableConnectAPI::PlanTier) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BRONZE = T.let(:Bronze, VitableConnectAPI::PlanTier::TaggedSymbol)
      SILVER = T.let(:Silver, VitableConnectAPI::PlanTier::TaggedSymbol)
      GOLD = T.let(:Gold, VitableConnectAPI::PlanTier::TaggedSymbol)
      PLATINUM = T.let(:Platinum, VitableConnectAPI::PlanTier::TaggedSymbol)

      sig do
        override.returns(T::Array[VitableConnectAPI::PlanTier::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
