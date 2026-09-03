# frozen_string_literal: true

module VitableConnect
  module Types
    # One plan year, list view.
    #
    # Standalone (no shared base) so the exact list payload is readable in one place; the detail
    # serializer is a separate class even where fields overlap.
    class BenefitPlanYearList < Internal::Types::Model
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

      field :is_current, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :enrollment_rate, -> { VitableConnect::Types::EnrollmentRate }, optional: false, nullable: false
    end
  end
end
