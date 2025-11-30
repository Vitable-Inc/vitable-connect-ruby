# typed: strong

module VitableConnectAPI
  module Models
    module Employees
      # - `pending` - Pending
      # - `enrolled` - Enrolled
      # - `waived` - Waived
      # - `inactive` - Inactive
      module EnrollmentStatus
        extend VitableConnectAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnectAPI::Employees::EnrollmentStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            VitableConnectAPI::Employees::EnrollmentStatus::TaggedSymbol
          )
        ENROLLED =
          T.let(
            :enrolled,
            VitableConnectAPI::Employees::EnrollmentStatus::TaggedSymbol
          )
        WAIVED =
          T.let(
            :waived,
            VitableConnectAPI::Employees::EnrollmentStatus::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            VitableConnectAPI::Employees::EnrollmentStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnectAPI::Employees::EnrollmentStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
