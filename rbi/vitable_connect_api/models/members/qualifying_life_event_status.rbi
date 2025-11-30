# typed: strong

module VitableConnectAPI
  module Models
    module Members
      # - `pending` - Pending
      # - `approved` - Approved
      # - `denied` - Denied
      module QualifyingLifeEventStatus
        extend VitableConnectAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnectAPI::Members::QualifyingLifeEventStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            VitableConnectAPI::Members::QualifyingLifeEventStatus::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            VitableConnectAPI::Members::QualifyingLifeEventStatus::TaggedSymbol
          )
        DENIED =
          T.let(
            :denied,
            VitableConnectAPI::Members::QualifyingLifeEventStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnectAPI::Members::QualifyingLifeEventStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
