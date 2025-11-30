# typed: strong

module VitableConnectAPI
  module Models
    # - `Male` - Male
    # - `Female` - Female
    # - `Other` - Other
    # - `Unknown` - Unknown
    module Sex
      extend VitableConnectAPI::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, VitableConnectAPI::Sex) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MALE = T.let(:Male, VitableConnectAPI::Sex::TaggedSymbol)
      FEMALE = T.let(:Female, VitableConnectAPI::Sex::TaggedSymbol)
      OTHER = T.let(:Other, VitableConnectAPI::Sex::TaggedSymbol)
      UNKNOWN = T.let(:Unknown, VitableConnectAPI::Sex::TaggedSymbol)

      sig { override.returns(T::Array[VitableConnectAPI::Sex::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
