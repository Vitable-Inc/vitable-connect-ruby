# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    class UpdatePlanYearRequest < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute contribution_classes
      #
      #   @return [Array<VitablePartnerAPI::Models::UpdatePlanYearRequest::ContributionClass>, nil]
      optional :contribution_classes,
               -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::UpdatePlanYearRequest::ContributionClass] }

      # @!attribute coverage_end_date
      #
      #   @return [Date, nil]
      optional :coverage_end_date, Date

      # @!attribute coverage_start_date
      #
      #   @return [Date, nil]
      optional :coverage_start_date, Date

      # @!attribute open_enrollment_end_date
      #
      #   @return [Date, nil]
      optional :open_enrollment_end_date, Date

      # @!attribute open_enrollment_start_date
      #
      #   @return [Date, nil]
      optional :open_enrollment_start_date, Date

      # @!attribute plan_costs
      #
      #   @return [Array<VitablePartnerAPI::Models::UpdatePlanYearRequest::PlanCost>, nil]
      optional :plan_costs,
               -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::UpdatePlanYearRequest::PlanCost] }

      # @!method initialize(contribution_classes: nil, coverage_end_date: nil, coverage_start_date: nil, open_enrollment_end_date: nil, open_enrollment_start_date: nil, plan_costs: nil)
      #   @param contribution_classes [Array<VitablePartnerAPI::Models::UpdatePlanYearRequest::ContributionClass>]
      #   @param coverage_end_date [Date]
      #   @param coverage_start_date [Date]
      #   @param open_enrollment_end_date [Date]
      #   @param open_enrollment_start_date [Date]
      #   @param plan_costs [Array<VitablePartnerAPI::Models::UpdatePlanYearRequest::PlanCost>]

      class ContributionClass < VitablePartnerAPI::Internal::Type::BaseModel
        # @!attribute compensation
        #
        #   @return [String, nil]
        optional :compensation, String

        # @!attribute employer_contribution_in_cents
        #
        #   @return [Integer, nil]
        optional :employer_contribution_in_cents, Integer

        # @!attribute employment
        #
        #   @return [String, nil]
        optional :employment, String

        # @!attribute family_status
        #
        #   @return [String, nil]
        optional :family_status, String

        # @!attribute location
        #
        #   @return [String, nil]
        optional :location, String

        # @!attribute location_value
        #
        #   @return [String, nil]
        optional :location_value, String

        # @!attribute max_age
        #
        #   @return [Integer, nil]
        optional :max_age, Integer

        # @!attribute min_age
        #
        #   @return [Integer, nil]
        optional :min_age, Integer

        # @!attribute plan_id
        #
        #   @return [String, nil]
        optional :plan_id, String

        # @!method initialize(compensation: nil, employer_contribution_in_cents: nil, employment: nil, family_status: nil, location: nil, location_value: nil, max_age: nil, min_age: nil, plan_id: nil)
        #   @param compensation [String]
        #   @param employer_contribution_in_cents [Integer]
        #   @param employment [String]
        #   @param family_status [String]
        #   @param location [String]
        #   @param location_value [String]
        #   @param max_age [Integer]
        #   @param min_age [Integer]
        #   @param plan_id [String]
      end

      class PlanCost < VitablePartnerAPI::Internal::Type::BaseModel
        # @!attribute dependent_cost_in_cents
        #
        #   @return [Integer, nil]
        optional :dependent_cost_in_cents, Integer

        # @!attribute employee_cost_in_cents
        #
        #   @return [Integer, nil]
        optional :employee_cost_in_cents, Integer

        # @!attribute plan_id
        #
        #   @return [String, nil]
        optional :plan_id, String

        # @!method initialize(dependent_cost_in_cents: nil, employee_cost_in_cents: nil, plan_id: nil)
        #   @param dependent_cost_in_cents [Integer]
        #   @param employee_cost_in_cents [Integer]
        #   @param plan_id [String]
      end
    end
  end
end
