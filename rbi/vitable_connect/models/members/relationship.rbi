# typed: strong

module VitableConnect
  module Models
    module Members
      # - `Spouse` - Spouse
      # - `Child` - Child
      module Relationship
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, VitableConnect::Members::Relationship) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SPOUSE =
          T.let(:Spouse, VitableConnect::Members::Relationship::TaggedSymbol)
        CHILD =
          T.let(:Child, VitableConnect::Members::Relationship::TaggedSymbol)

        sig do
          override.returns(
            T::Array[VitableConnect::Members::Relationship::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
