# frozen_string_literal: true

module VitableConnect
  module Types
    # A single enrollment, including the enrolled plan's documents.
    #
    # The plan documents are resolved one enrollment at a time and are therefore not part of the
    # list row.
    class EnrollmentDetail < Internal::Types::Model
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

      field :sbc_url, -> { String }, optional: true, nullable: false
    end
  end
end
