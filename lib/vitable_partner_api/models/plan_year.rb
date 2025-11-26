# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    # @see VitablePartnerAPI::Resources::PlanYears#update
    class PlanYear < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute benefit_product
      #
      #   @return [VitablePartnerAPI::Models::BenefitProduct]
      required :benefit_product, -> { VitablePartnerAPI::BenefitProduct }

      # @!attribute configured
      #
      #   @return [Boolean]
      required :configured, VitablePartnerAPI::Internal::Type::Boolean

      # @!attribute coverage_end_date
      #
      #   @return [Date]
      required :coverage_end_date, Date

      # @!attribute coverage_start_date
      #
      #   @return [Date]
      required :coverage_start_date, Date

      # @!attribute employer_id
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute open_enrollment_end_date
      #
      #   @return [Date]
      required :open_enrollment_end_date, Date

      # @!attribute open_enrollment_start_date
      #
      #   @return [Date]
      required :open_enrollment_start_date, Date

      # @!attribute contribution_classes
      #
      #   @return [Array<VitablePartnerAPI::Models::BenefitProducts::PlanContributionClass>, nil]
      optional :contribution_classes,
               -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::BenefitProducts::PlanContributionClass] }

      # @!attribute plan_costs
      #
      #   @return [Array<VitablePartnerAPI::Models::BenefitProducts::PlanCost>, nil]
      optional :plan_costs,
               -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::BenefitProducts::PlanCost] }

      # @!method initialize(id:, benefit_product:, configured:, coverage_end_date:, coverage_start_date:, employer_id:, open_enrollment_end_date:, open_enrollment_start_date:, contribution_classes: nil, plan_costs: nil)
      #   @param id [String]
      #   @param benefit_product [VitablePartnerAPI::Models::BenefitProduct]
      #   @param configured [Boolean]
      #   @param coverage_end_date [Date]
      #   @param coverage_start_date [Date]
      #   @param employer_id [String]
      #   @param open_enrollment_end_date [Date]
      #   @param open_enrollment_start_date [Date]
      #   @param contribution_classes [Array<VitablePartnerAPI::Models::BenefitProducts::PlanContributionClass>]
      #   @param plan_costs [Array<VitablePartnerAPI::Models::BenefitProducts::PlanCost>]
    end
  end
end
