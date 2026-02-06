# typed: strong

module VitableConnect
  module Models
    module Employers
      # - `Male` - Male
      # - `Female` - Female
      # - `Other` - Other
      # - `Unknown` - Unknown
      module Sex
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, VitableConnect::Employers::Sex) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MALE = T.let(:Male, VitableConnect::Employers::Sex::TaggedSymbol)
        FEMALE = T.let(:Female, VitableConnect::Employers::Sex::TaggedSymbol)
        OTHER = T.let(:Other, VitableConnect::Employers::Sex::TaggedSymbol)
        UNKNOWN = T.let(:Unknown, VitableConnect::Employers::Sex::TaggedSymbol)

        sig do
          override.returns(
            T::Array[VitableConnect::Employers::Sex::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
