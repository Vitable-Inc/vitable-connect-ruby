# frozen_string_literal: true

module VitableConnect
  module Types
    # One enrollment as it appears in a list row.
    class Enrollment < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :employee_id, -> { String }, optional: false, nullable: false

      field :employer_id, -> { String }, optional: false, nullable: false

      field :benefit, -> { VitableConnect::Types::BenefitSummary }, optional: false, nullable: false

      field :status, -> { VitableConnect::Types::EnrollmentStatus }, optional: false, nullable: false

      field :coverage_start, -> { String }, optional: false, nullable: false

      field :coverage_end, -> { String }, optional: false, nullable: true

      field :employee_deduction_in_cents, -> { Integer }, optional: false, nullable: true

      field :employer_contribution_in_cents, -> { Integer }, optional: false, nullable: true

      field :answered_at, -> { String }, optional: false, nullable: true

      field :terminated_at, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
