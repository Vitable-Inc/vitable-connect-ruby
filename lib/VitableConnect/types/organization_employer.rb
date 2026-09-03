# frozen_string_literal: true

module VitableConnect
  module Types
    # One employer row of the organization's book (list projection).
    #
    # Carries the enriched/computed columns (enrollment roll-up, benefit-family tags, HRIS connection,
    # benefit-lifecycle stage) alongside the flat CRM fields of the underlying employer (legal name,
    # EIN, contact, address, timestamps) for parity with the legacy ``Employer`` contract.
    class OrganizationEmployer < Internal::Types::Model
      field :employer_id, -> { String }, optional: false, nullable: false

      field :organization_id, -> { String }, optional: false, nullable: true

      field :reference_id, -> { String }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: false

      field :legal_name, -> { String }, optional: false, nullable: true

      field :ein, -> { String }, optional: false, nullable: true

      field :email, -> { String }, optional: false, nullable: true

      field :phone_number, -> { String }, optional: false, nullable: true

      field :active, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :address, -> { VitableConnect::Types::Address }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false

      field :enrollment_rate_summary, -> { VitableConnect::Types::EnrollmentRateSummary }, optional: false, nullable: false

      field :benefit_families, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :hris_status, -> { VitableConnect::Types::EmployerHrisStatus }, optional: false, nullable: true

      field :benefit_lifecycle_stage, -> { VitableConnect::Types::EmployerBenefitLifecycleStage }, optional: false, nullable: false
    end
  end
end
