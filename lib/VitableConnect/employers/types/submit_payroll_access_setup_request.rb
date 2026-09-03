# frozen_string_literal: true

module VitableConnect
  module Employers
    module Types
      class SubmitPayrollAccessSetupRequest < Internal::Types::Model
        field :employer_id, -> { String }, optional: false, nullable: false

        field :employees_in_payroll_acknowledged, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :payroll_data_impacts_eligibility_acknowledged, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :classifications_accurate, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :classification_correction_source, -> { VitableConnect::Types::ClassificationCorrectionSource }, optional: true, nullable: false

        field :misclassified_employee_names, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :remaining_employee_action, -> { VitableConnect::Types::RemainingEmployeeAction }, optional: true, nullable: false

        field :all_benefit_eligible_employees_present, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :missing_employee_resolution, -> { VitableConnect::Types::MissingEmployeeResolution }, optional: true, nullable: false

        field :is_controlled_group, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :same_payroll_covers_other_eins, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :access_method, -> { VitableConnect::Types::AccessMethod }, optional: false, nullable: false

        field :login_url, -> { String }, optional: true, nullable: false

        field :username, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :password, -> { String }, optional: true, nullable: false

        field :integration_confirmed, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :has_additional_payroll_system, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :additional_access_method, -> { VitableConnect::Types::AdditionalAccessMethod }, optional: true, nullable: false

        field :additional_login_url, -> { String }, optional: true, nullable: false

        field :additional_username, -> { String }, optional: true, nullable: false

        field :additional_phone, -> { String }, optional: true, nullable: false

        field :additional_password, -> { String }, optional: true, nullable: false

        field :additional_integration_confirmed, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
