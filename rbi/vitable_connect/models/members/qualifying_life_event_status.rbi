# typed: strong

module VitableConnect
  module Models
    module Members
      # - `pending` - Pending
      # - `approved` - Approved
      # - `denied` - Denied
      module QualifyingLifeEventStatus
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnect::Members::QualifyingLifeEventStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            VitableConnect::Members::QualifyingLifeEventStatus::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            VitableConnect::Members::QualifyingLifeEventStatus::TaggedSymbol
          )
        DENIED =
          T.let(
            :denied,
            VitableConnect::Members::QualifyingLifeEventStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::Members::QualifyingLifeEventStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
