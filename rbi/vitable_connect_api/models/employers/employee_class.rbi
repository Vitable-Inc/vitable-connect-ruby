# typed: strong

module VitableConnectAPI
  module Models
    module Employers
      # - `Full Time` - Full Time
      # - `Part Time` - Part Time
      # - `Temporary` - Temporary
      # - `Intern` - Intern
      # - `Seasonal` - Seasonal
      # - `Individual Contractor` - Individual Contractor
      module EmployeeClass
        extend VitableConnectAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnectAPI::Employers::EmployeeClass)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FULL_TIME =
          T.let(
            :"Full Time",
            VitableConnectAPI::Employers::EmployeeClass::TaggedSymbol
          )
        PART_TIME =
          T.let(
            :"Part Time",
            VitableConnectAPI::Employers::EmployeeClass::TaggedSymbol
          )
        TEMPORARY =
          T.let(
            :Temporary,
            VitableConnectAPI::Employers::EmployeeClass::TaggedSymbol
          )
        INTERN =
          T.let(
            :Intern,
            VitableConnectAPI::Employers::EmployeeClass::TaggedSymbol
          )
        SEASONAL =
          T.let(
            :Seasonal,
            VitableConnectAPI::Employers::EmployeeClass::TaggedSymbol
          )
        INDIVIDUAL_CONTRACTOR =
          T.let(
            :"Individual Contractor",
            VitableConnectAPI::Employers::EmployeeClass::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[VitableConnectAPI::Employers::EmployeeClass::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
