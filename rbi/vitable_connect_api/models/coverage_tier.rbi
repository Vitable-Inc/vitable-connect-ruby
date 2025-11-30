# typed: strong

module VitableConnectAPI
  module Models
    # - `Unspecified` - Unspecified
    # - `EE` - Ee
    # - `ES` - Es
    # - `EC` - Ec
    # - `EF` - Ef
    module CoverageTier
      extend VitableConnectAPI::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, VitableConnectAPI::CoverageTier) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      UNSPECIFIED =
        T.let(:Unspecified, VitableConnectAPI::CoverageTier::TaggedSymbol)
      EE = T.let(:EE, VitableConnectAPI::CoverageTier::TaggedSymbol)
      ES = T.let(:ES, VitableConnectAPI::CoverageTier::TaggedSymbol)
      EC = T.let(:EC, VitableConnectAPI::CoverageTier::TaggedSymbol)
      EF = T.let(:EF, VitableConnectAPI::CoverageTier::TaggedSymbol)

      sig do
        override.returns(
          T::Array[VitableConnectAPI::CoverageTier::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
