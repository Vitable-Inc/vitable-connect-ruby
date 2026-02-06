# typed: strong

module VitableConnect
  module Models
    module Employers
      # - `Full Time` - Full Time
      # - `Part Time` - Part Time
      # - `Temporary` - Temporary
      # - `Intern` - Intern
      # - `Seasonal` - Seasonal
      # - `Individual Contractor` - Individual Contractor
      module EmployeeClass
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnect::Employers::EmployeeClass)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FULL_TIME =
          T.let(
            :"Full Time",
            VitableConnect::Employers::EmployeeClass::TaggedSymbol
          )
        PART_TIME =
          T.let(
            :"Part Time",
            VitableConnect::Employers::EmployeeClass::TaggedSymbol
          )
        TEMPORARY =
          T.let(
            :Temporary,
            VitableConnect::Employers::EmployeeClass::TaggedSymbol
          )
        INTERN =
          T.let(:Intern, VitableConnect::Employers::EmployeeClass::TaggedSymbol)
        SEASONAL =
          T.let(
            :Seasonal,
            VitableConnect::Employers::EmployeeClass::TaggedSymbol
          )
        INDIVIDUAL_CONTRACTOR =
          T.let(
            :"Individual Contractor",
            VitableConnect::Employers::EmployeeClass::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[VitableConnect::Employers::EmployeeClass::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
