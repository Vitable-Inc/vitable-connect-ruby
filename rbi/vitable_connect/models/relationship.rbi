# typed: strong

module VitableConnect
  module Models
    # - `Spouse` - Spouse
    # - `Child` - Child
    module Relationship
      extend VitableConnect::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, VitableConnect::Relationship) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SPOUSE = T.let(:Spouse, VitableConnect::Relationship::TaggedSymbol)
      CHILD = T.let(:Child, VitableConnect::Relationship::TaggedSymbol)

      sig do
        override.returns(T::Array[VitableConnect::Relationship::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
