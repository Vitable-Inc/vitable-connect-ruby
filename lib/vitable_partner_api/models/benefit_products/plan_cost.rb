# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    module BenefitProducts
      class PlanCost < VitablePartnerAPI::Internal::Type::BaseModel
        # @!attribute dependent_cost_in_cents
        #
        #   @return [Integer]
        required :dependent_cost_in_cents, Integer

        # @!attribute employee_cost_in_cents
        #
        #   @return [Integer]
        required :employee_cost_in_cents, Integer

        # @!attribute plan_id
        #
        #   @return [String]
        required :plan_id, String

        # @!attribute plan_year_id
        #
        #   @return [String]
        required :plan_year_id, String

        # @!method initialize(dependent_cost_in_cents:, employee_cost_in_cents:, plan_id:, plan_year_id:)
        #   @param dependent_cost_in_cents [Integer]
        #   @param employee_cost_in_cents [Integer]
        #   @param plan_id [String]
        #   @param plan_year_id [String]
      end
    end
  end
end
