# typed: strong

module VitableConnect
  module Models
    module Employees
      # - `pending` - Pending
      # - `enrolled` - Enrolled
      # - `waived` - Waived
      # - `inactive` - Inactive
      module EnrollmentStatus
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnect::Employees::EnrollmentStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            VitableConnect::Employees::EnrollmentStatus::TaggedSymbol
          )
        ENROLLED =
          T.let(
            :enrolled,
            VitableConnect::Employees::EnrollmentStatus::TaggedSymbol
          )
        WAIVED =
          T.let(
            :waived,
            VitableConnect::Employees::EnrollmentStatus::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            VitableConnect::Employees::EnrollmentStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[VitableConnect::Employees::EnrollmentStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
