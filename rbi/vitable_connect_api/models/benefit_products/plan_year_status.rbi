# typed: strong

module VitableConnectAPI
  module Models
    module BenefitProducts
      # - `draft` - Draft
      # - `open_enrollment` - Open Enrollment
      # - `active` - Active
      # - `expired` - Expired
      module PlanYearStatus
        extend VitableConnectAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnectAPI::BenefitProducts::PlanYearStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT =
          T.let(
            :draft,
            VitableConnectAPI::BenefitProducts::PlanYearStatus::TaggedSymbol
          )
        OPEN_ENROLLMENT =
          T.let(
            :open_enrollment,
            VitableConnectAPI::BenefitProducts::PlanYearStatus::TaggedSymbol
          )
        ACTIVE =
          T.let(
            :active,
            VitableConnectAPI::BenefitProducts::PlanYearStatus::TaggedSymbol
          )
        EXPIRED =
          T.let(
            :expired,
            VitableConnectAPI::BenefitProducts::PlanYearStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnectAPI::BenefitProducts::PlanYearStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
