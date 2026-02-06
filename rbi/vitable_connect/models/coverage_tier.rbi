# typed: strong

module VitableConnect
  module Models
    # - `Unspecified` - Unspecified
    # - `EE` - Ee
    # - `ES` - Es
    # - `EC` - Ec
    # - `EF` - Ef
    module CoverageTier
      extend VitableConnect::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, VitableConnect::CoverageTier) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      UNSPECIFIED =
        T.let(:Unspecified, VitableConnect::CoverageTier::TaggedSymbol)
      EE = T.let(:EE, VitableConnect::CoverageTier::TaggedSymbol)
      ES = T.let(:ES, VitableConnect::CoverageTier::TaggedSymbol)
      EC = T.let(:EC, VitableConnect::CoverageTier::TaggedSymbol)
      EF = T.let(:EF, VitableConnect::CoverageTier::TaggedSymbol)

      sig do
        override.returns(T::Array[VitableConnect::CoverageTier::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
