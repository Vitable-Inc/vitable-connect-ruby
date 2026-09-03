# frozen_string_literal: true

module VitableConnect
  module Types
    # Wire serializer for :class:`MemberEnrollmentDTO` (one benefit enrollment row).
    class MemberEnrollment < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :employer_id, -> { String }, optional: false, nullable: false

      field :benefit_plan_year_id, -> { String }, optional: false, nullable: false

      field :benefit_type, -> { VitableConnect::Types::Category }, optional: false, nullable: false

      field :product_code, -> { VitableConnect::Types::ProductCode }, optional: false, nullable: false

      field :requires_qle_for_reissue, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :product_name, -> { String }, optional: false, nullable: false

      field :employer_name, -> { String }, optional: false, nullable: false

      field :carrier_name, -> { String }, optional: true, nullable: false

      field :plan_name, -> { String }, optional: true, nullable: false

      field :tier_name, -> { String }, optional: true, nullable: false

      field :employee_deduction_in_cents, -> { Integer }, optional: true, nullable: false

      field :employer_contribution_in_cents, -> { Integer }, optional: true, nullable: false

      field :premium_in_cents, -> { Integer }, optional: true, nullable: false

      field :coverage_start, -> { String }, optional: true, nullable: false

      field :coverage_end, -> { String }, optional: true, nullable: false

      field :cancelled_date, -> { String }, optional: false, nullable: true

      field :plan_year_coverage_end, -> { String }, optional: false, nullable: true

      field :issued_date, -> { String }, optional: false, nullable: false

      field :enrollment_window_start, -> { String }, optional: false, nullable: false

      field :enrollment_window_end, -> { String }, optional: true, nullable: false

      field :election_status, -> { VitableConnect::Types::PlanYearEnrollmentElectionStatus }, optional: false, nullable: false

      field :policy_status, -> { VitableConnect::Types::PlanYearEnrollmentPolicyStatus }, optional: false, nullable: true

      field :in_last_month_of_coverage, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_within_enrollment_window, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
