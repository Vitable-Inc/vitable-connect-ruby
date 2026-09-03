# frozen_string_literal: true

module VitableConnect
  module Types
    # The plan year's active eligibility policy. Mirrors the internal ``PlanYearEligibilityPolicyDTO``
    # but exposes only the public subset (no raw ids, ``active_in``, or timestamps).
    class EligibilityPolicy < Internal::Types::Model
      field :waiting_period, -> { VitableConnect::Types::WaitingPeriod }, optional: false, nullable: true

      field :termination_rule, -> { VitableConnect::Types::TerminationRule }, optional: false, nullable: false

      field :termination_n_months, -> { Integer }, optional: false, nullable: true

      field :rules, -> { Internal::Types::Array[VitableConnect::Types::EligibilityPolicyRule] }, optional: false, nullable: false
    end
  end
end
