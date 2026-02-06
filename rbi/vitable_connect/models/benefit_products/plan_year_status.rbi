# typed: strong

module VitableConnect
  module Models
    module BenefitProducts
      # - `draft` - Draft
      # - `open_enrollment` - Open Enrollment
      # - `active` - Active
      # - `expired` - Expired
      module PlanYearStatus
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnect::BenefitProducts::PlanYearStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT =
          T.let(
            :draft,
            VitableConnect::BenefitProducts::PlanYearStatus::TaggedSymbol
          )
        OPEN_ENROLLMENT =
          T.let(
            :open_enrollment,
            VitableConnect::BenefitProducts::PlanYearStatus::TaggedSymbol
          )
        ACTIVE =
          T.let(
            :active,
            VitableConnect::BenefitProducts::PlanYearStatus::TaggedSymbol
          )
        EXPIRED =
          T.let(
            :expired,
            VitableConnect::BenefitProducts::PlanYearStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::BenefitProducts::PlanYearStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
