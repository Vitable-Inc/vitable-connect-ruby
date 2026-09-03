# frozen_string_literal: true

module VitableConnect
  module Types
    # One plan year, detail view.
    #
    # Standalone (no shared base) so the exact detail payload is readable in one place; the list
    # serializer is a separate class even where fields overlap. Detail carries the SPD link and omits
    # the list-only ``is_current`` flag.
    class BenefitPlanYearDetail < Internal::Types::Model
      field :benefit_plan_year_id, -> { String }, optional: false, nullable: false

      field :benefit_id, -> { String }, optional: false, nullable: false

      field :year, -> { Integer }, optional: false, nullable: false

      field :family, -> { VitableConnect::Types::BenefitFamily }, optional: false, nullable: false

      field :product_name, -> { String }, optional: false, nullable: false

      field :carrier, -> { String }, optional: false, nullable: true

      field :network_names, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :premium_in_cents, -> { Integer }, optional: false, nullable: true

      field :employee_contribution, -> { VitableConnect::Types::ContributionRange }, optional: false, nullable: true

      field :employer_contribution, -> { VitableConnect::Types::ContributionRange }, optional: false, nullable: true

      field :status, -> { VitableConnect::Types::BenefitStatus }, optional: false, nullable: false

      field :coverage_start, -> { String }, optional: false, nullable: false

      field :coverage_end, -> { String }, optional: false, nullable: true

      field :open_enrollment_start, -> { String }, optional: false, nullable: false

      field :open_enrollment_end, -> { String }, optional: false, nullable: true

      field :offered_states, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :enrollment_rate, -> { VitableConnect::Types::EnrollmentRate }, optional: false, nullable: false

      field :spd_file_url, -> { String }, optional: false, nullable: true

      field :contribution_strategy, -> { VitableConnect::Types::ContributionStrategy }, optional: false, nullable: false

      field :eligibility_policy, -> { VitableConnect::Types::EligibilityPolicy }, optional: false, nullable: true
    end
  end
end
