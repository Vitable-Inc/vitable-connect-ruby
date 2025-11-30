# typed: strong

module VitableConnectAPI
  module Models
    module Members
      # - `Spouse` - Spouse
      # - `Child` - Child
      module Relationship
        extend VitableConnectAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnectAPI::Members::Relationship)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SPOUSE =
          T.let(:Spouse, VitableConnectAPI::Members::Relationship::TaggedSymbol)
        CHILD =
          T.let(:Child, VitableConnectAPI::Members::Relationship::TaggedSymbol)

        sig do
          override.returns(
            T::Array[VitableConnectAPI::Members::Relationship::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
