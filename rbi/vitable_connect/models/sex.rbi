# typed: strong

module VitableConnect
  module Models
    # - `Male` - Male
    # - `Female` - Female
    # - `Other` - Other
    # - `Unknown` - Unknown
    module Sex
      extend VitableConnect::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, VitableConnect::Sex) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      MALE = T.let(:Male, VitableConnect::Sex::TaggedSymbol)
      FEMALE = T.let(:Female, VitableConnect::Sex::TaggedSymbol)
      OTHER = T.let(:Other, VitableConnect::Sex::TaggedSymbol)
      UNKNOWN = T.let(:Unknown, VitableConnect::Sex::TaggedSymbol)

      sig { override.returns(T::Array[VitableConnect::Sex::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
