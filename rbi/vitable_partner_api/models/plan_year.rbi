# typed: strong

module VitablePartnerAPI
  module Models
    class PlanYear < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::PlanYear,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(VitablePartnerAPI::BenefitProduct) }
      attr_reader :benefit_product

      sig do
        params(benefit_product: VitablePartnerAPI::BenefitProduct::OrHash).void
      end
      attr_writer :benefit_product

      sig { returns(T::Boolean) }
      attr_accessor :configured

      sig { returns(Date) }
      attr_accessor :coverage_end_date

      sig { returns(Date) }
      attr_accessor :coverage_start_date

      sig { returns(String) }
      attr_accessor :employer_id

      sig { returns(Date) }
      attr_accessor :open_enrollment_end_date

      sig { returns(Date) }
      attr_accessor :open_enrollment_start_date

      sig do
        returns(
          T.nilable(
            T::Array[VitablePartnerAPI::BenefitProducts::PlanContributionClass]
          )
        )
      end
      attr_reader :contribution_classes

      sig do
        params(
          contribution_classes:
            T::Array[
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::OrHash
            ]
        ).void
      end
      attr_writer :contribution_classes

      sig do
        returns(
          T.nilable(T::Array[VitablePartnerAPI::BenefitProducts::PlanCost])
        )
      end
      attr_reader :plan_costs

      sig do
        params(
          plan_costs:
            T::Array[VitablePartnerAPI::BenefitProducts::PlanCost::OrHash]
        ).void
      end
      attr_writer :plan_costs

      sig do
        params(
          id: String,
          benefit_product: VitablePartnerAPI::BenefitProduct::OrHash,
          configured: T::Boolean,
          coverage_end_date: Date,
          coverage_start_date: Date,
          employer_id: String,
          open_enrollment_end_date: Date,
          open_enrollment_start_date: Date,
          contribution_classes:
            T::Array[
              VitablePartnerAPI::BenefitProducts::PlanContributionClass::OrHash
            ],
          plan_costs:
            T::Array[VitablePartnerAPI::BenefitProducts::PlanCost::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        benefit_product:,
        configured:,
        coverage_end_date:,
        coverage_start_date:,
        employer_id:,
        open_enrollment_end_date:,
        open_enrollment_start_date:,
        contribution_classes: nil,
        plan_costs: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            benefit_product: VitablePartnerAPI::BenefitProduct,
            configured: T::Boolean,
            coverage_end_date: Date,
            coverage_start_date: Date,
            employer_id: String,
            open_enrollment_end_date: Date,
            open_enrollment_start_date: Date,
            contribution_classes:
              T::Array[
                VitablePartnerAPI::BenefitProducts::PlanContributionClass
              ],
            plan_costs: T::Array[VitablePartnerAPI::BenefitProducts::PlanCost]
          }
        )
      end
      def to_hash
      end
    end
  end
end
