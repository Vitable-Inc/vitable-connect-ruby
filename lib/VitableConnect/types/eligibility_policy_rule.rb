# frozen_string_literal: true

module VitableConnect
  module Types
    # One eligibility rule — the workforce slice it makes eligible. Mirrors the internal
    # ``PlanYearEligibilityPolicyRuleDTO`` minus the raw ids and timestamps.
    class EligibilityPolicyRule < Internal::Types::Model
      field :employee_class, -> { VitableConnect::Types::EligibilityRuleEmployeeClass }, optional: false, nullable: false

      field :compensation_type, -> { VitableConnect::Types::EligibilityRuleCompensationType }, optional: false, nullable: false

      field :eligible_geographical_location, -> { VitableConnect::Types::EligibleGeographicalLocation }, optional: false, nullable: false
    end
  end
end
