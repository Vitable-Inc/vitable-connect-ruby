# typed: strong

module VitableConnect
  module Models
    # - `Full Time` - Full Time
    # - `Part Time` - Part Time
    # - `Temporary` - Temporary
    # - `Intern` - Intern
    # - `Seasonal` - Seasonal
    # - `Individual Contractor` - Individual Contractor
    module EmployeeClass
      extend VitableConnect::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, VitableConnect::EmployeeClass) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      FULL_TIME =
        T.let(:"Full Time", VitableConnect::EmployeeClass::TaggedSymbol)
      PART_TIME =
        T.let(:"Part Time", VitableConnect::EmployeeClass::TaggedSymbol)
      TEMPORARY = T.let(:Temporary, VitableConnect::EmployeeClass::TaggedSymbol)
      INTERN = T.let(:Intern, VitableConnect::EmployeeClass::TaggedSymbol)
      SEASONAL = T.let(:Seasonal, VitableConnect::EmployeeClass::TaggedSymbol)
      INDIVIDUAL_CONTRACTOR =
        T.let(
          :"Individual Contractor",
          VitableConnect::EmployeeClass::TaggedSymbol
        )

      sig do
        override.returns(T::Array[VitableConnect::EmployeeClass::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
