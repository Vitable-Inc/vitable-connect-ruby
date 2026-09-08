# typed: strong

module VitableConnect
  module Models
    # - `pending` - Pending
    # - `enrolled` - Enrolled
    # - `waived` - Waived
    # - `inactive` - Inactive
    module EnrollmentStatus
      extend VitableConnect::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, VitableConnect::EnrollmentStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING = T.let(:pending, VitableConnect::EnrollmentStatus::TaggedSymbol)
      ENROLLED =
        T.let(:enrolled, VitableConnect::EnrollmentStatus::TaggedSymbol)
      WAIVED = T.let(:waived, VitableConnect::EnrollmentStatus::TaggedSymbol)
      INACTIVE =
        T.let(:inactive, VitableConnect::EnrollmentStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[VitableConnect::EnrollmentStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
