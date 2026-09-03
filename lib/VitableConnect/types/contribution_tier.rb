# frozen_string_literal: true

module VitableConnect
  module Types
    # One non-ICHRA coverage tier, mirroring the internal configuration ``CompanyBenefitPlanTierCostDTO``
    # minus the tier-cost id, ``pepm`` and ``pepm_per_dependent``; ``benefit_plan_id`` is the prefixed
    # ``bpln_*`` form rather than a raw UUID.
    class ContributionTier < Internal::Types::Model
      field :benefit_plan_id, -> { String }, optional: false, nullable: false

      field :benefit_plan_name, -> { String }, optional: false, nullable: false

      field :benefit_plan_tier_name, -> { String }, optional: false, nullable: false

      field :coverage_tier, -> { VitableConnect::Types::CoverageTier }, optional: false, nullable: false

      field :cost, -> { Integer }, optional: false, nullable: false

      field :cost_per_dependent, -> { Integer }, optional: false, nullable: false

      field :dependents_required_in, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :spouse_required_in, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
