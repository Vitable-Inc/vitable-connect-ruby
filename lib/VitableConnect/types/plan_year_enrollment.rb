# frozen_string_literal: true

module VitableConnect
  module Types
    class PlanYearEnrollment < Internal::Types::Model
      field :member_id, -> { String }, optional: false, nullable: false

      field :employee_id, -> { String }, optional: false, nullable: false

      field :employee_external_reference_id, -> { String }, optional: false, nullable: true

      field :member_first_name, -> { String }, optional: false, nullable: false

      field :member_last_name, -> { String }, optional: false, nullable: false

      field :election_status, -> { VitableConnect::Types::PlanYearEnrollmentElectionStatus }, optional: false, nullable: false

      field :policy_status, -> { VitableConnect::Types::PlanYearEnrollmentPolicyStatus }, optional: false, nullable: true

      field :dependent_count, -> { Integer }, optional: false, nullable: false

      field :carrier, -> { String }, optional: false, nullable: true

      field :plan, -> { String }, optional: false, nullable: true

      field :tier, -> { String }, optional: false, nullable: true

      field :premium_in_cents, -> { Integer }, optional: false, nullable: true

      field :employer_contribution_in_cents, -> { Integer }, optional: false, nullable: true

      field :employee_deduction_in_cents, -> { Integer }, optional: false, nullable: true
    end
  end
end
