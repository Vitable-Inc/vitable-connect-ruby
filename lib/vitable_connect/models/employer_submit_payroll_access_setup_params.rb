# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#submit_payroll_access_setup
    class EmployerSubmitPayrollAccessSetupParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute employer_id
      #   Unique employer identifier (empr\_\*)
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute access_method
      #   - `SELF_SETUP` - SELF_SETUP
      #   - `NEEDS_HELP` - NEEDS_HELP
      #
      #   @return [Symbol, VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams::AccessMethod]
      required :access_method, enum: -> { VitableConnect::EmployerSubmitPayrollAccessSetupParams::AccessMethod }

      # @!attribute all_benefit_eligible_employees_present
      #
      #   @return [Boolean]
      required :all_benefit_eligible_employees_present, VitableConnect::Internal::Type::Boolean

      # @!attribute classifications_accurate
      #
      #   @return [Boolean]
      required :classifications_accurate, VitableConnect::Internal::Type::Boolean

      # @!attribute employees_in_payroll_acknowledged
      #
      #   @return [Boolean]
      required :employees_in_payroll_acknowledged, VitableConnect::Internal::Type::Boolean

      # @!attribute has_additional_payroll_system
      #
      #   @return [Boolean]
      required :has_additional_payroll_system, VitableConnect::Internal::Type::Boolean

      # @!attribute is_controlled_group
      #
      #   @return [Boolean]
      required :is_controlled_group, VitableConnect::Internal::Type::Boolean

      # @!attribute payroll_data_impacts_eligibility_acknowledged
      #
      #   @return [Boolean]
      required :payroll_data_impacts_eligibility_acknowledged, VitableConnect::Internal::Type::Boolean

      # @!attribute additional_access_method
      #   - `SELF_SETUP` - SELF_SETUP
      #   - `NEEDS_HELP` - NEEDS_HELP
      #
      #   @return [Symbol, VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams::AdditionalAccessMethod, nil]
      optional :additional_access_method,
               enum: -> { VitableConnect::EmployerSubmitPayrollAccessSetupParams::AdditionalAccessMethod },
               nil?: true

      # @!attribute additional_integration_confirmed
      #
      #   @return [Boolean, nil]
      optional :additional_integration_confirmed, VitableConnect::Internal::Type::Boolean, nil?: true

      # @!attribute additional_login_url
      #
      #   @return [String, nil]
      optional :additional_login_url, String, nil?: true

      # @!attribute additional_password
      #
      #   @return [String, nil]
      optional :additional_password, String, nil?: true

      # @!attribute additional_phone
      #
      #   @return [String, nil]
      optional :additional_phone, String, nil?: true

      # @!attribute additional_username
      #
      #   @return [String, nil]
      optional :additional_username, String, nil?: true

      # @!attribute classification_correction_source
      #   - `ENTER_NAMES` - ENTER_NAMES
      #   - `EMAIL_LIST` - EMAIL_LIST
      #
      #   @return [Symbol, VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams::ClassificationCorrectionSource, nil]
      optional :classification_correction_source,
               enum: -> {
                 VitableConnect::EmployerSubmitPayrollAccessSetupParams::ClassificationCorrectionSource
               },
               nil?: true

      # @!attribute integration_confirmed
      #
      #   @return [Boolean, nil]
      optional :integration_confirmed, VitableConnect::Internal::Type::Boolean, nil?: true

      # @!attribute login_url
      #
      #   @return [String, nil]
      optional :login_url, String, nil?: true

      # @!attribute misclassified_employee_names
      #
      #   @return [Array<String>, nil]
      optional :misclassified_employee_names, VitableConnect::Internal::Type::ArrayOf[String]

      # @!attribute missing_employee_resolution
      #   - `EMAIL_CENSUS` - EMAIL_CENSUS
      #   - `SECOND_SYSTEM_ACCESS` - SECOND_SYSTEM_ACCESS
      #
      #   @return [Symbol, VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams::MissingEmployeeResolution, nil]
      optional :missing_employee_resolution,
               enum: -> { VitableConnect::EmployerSubmitPayrollAccessSetupParams::MissingEmployeeResolution },
               nil?: true

      # @!attribute password
      #
      #   @return [String, nil]
      optional :password, String, nil?: true

      # @!attribute phone
      #
      #   @return [String, nil]
      optional :phone, String, nil?: true

      # @!attribute remaining_employee_action
      #   - `VITABLE_UPDATE` - VITABLE_UPDATE
      #   - `EMPLOYER_UPDATE` - EMPLOYER_UPDATE
      #
      #   @return [Symbol, VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams::RemainingEmployeeAction, nil]
      optional :remaining_employee_action,
               enum: -> { VitableConnect::EmployerSubmitPayrollAccessSetupParams::RemainingEmployeeAction },
               nil?: true

      # @!attribute same_payroll_covers_other_eins
      #
      #   @return [Boolean, nil]
      optional :same_payroll_covers_other_eins, VitableConnect::Internal::Type::Boolean, nil?: true

      # @!attribute username
      #
      #   @return [String, nil]
      optional :username, String, nil?: true

      # @!method initialize(employer_id:, access_method:, all_benefit_eligible_employees_present:, classifications_accurate:, employees_in_payroll_acknowledged:, has_additional_payroll_system:, is_controlled_group:, payroll_data_impacts_eligibility_acknowledged:, additional_access_method: nil, additional_integration_confirmed: nil, additional_login_url: nil, additional_password: nil, additional_phone: nil, additional_username: nil, classification_correction_source: nil, integration_confirmed: nil, login_url: nil, misclassified_employee_names: nil, missing_employee_resolution: nil, password: nil, phone: nil, remaining_employee_action: nil, same_payroll_covers_other_eins: nil, username: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams} for more
      #   details.
      #
      #   @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      #   @param access_method [Symbol, VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams::AccessMethod] - `SELF_SETUP` - SELF_SETUP
      #
      #   @param all_benefit_eligible_employees_present [Boolean]
      #
      #   @param classifications_accurate [Boolean]
      #
      #   @param employees_in_payroll_acknowledged [Boolean]
      #
      #   @param has_additional_payroll_system [Boolean]
      #
      #   @param is_controlled_group [Boolean]
      #
      #   @param payroll_data_impacts_eligibility_acknowledged [Boolean]
      #
      #   @param additional_access_method [Symbol, VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams::AdditionalAccessMethod, nil] - `SELF_SETUP` - SELF_SETUP
      #
      #   @param additional_integration_confirmed [Boolean, nil]
      #
      #   @param additional_login_url [String, nil]
      #
      #   @param additional_password [String, nil]
      #
      #   @param additional_phone [String, nil]
      #
      #   @param additional_username [String, nil]
      #
      #   @param classification_correction_source [Symbol, VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams::ClassificationCorrectionSource, nil] - `ENTER_NAMES` - ENTER_NAMES
      #
      #   @param integration_confirmed [Boolean, nil]
      #
      #   @param login_url [String, nil]
      #
      #   @param misclassified_employee_names [Array<String>]
      #
      #   @param missing_employee_resolution [Symbol, VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams::MissingEmployeeResolution, nil] - `EMAIL_CENSUS` - EMAIL_CENSUS
      #
      #   @param password [String, nil]
      #
      #   @param phone [String, nil]
      #
      #   @param remaining_employee_action [Symbol, VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams::RemainingEmployeeAction, nil] - `VITABLE_UPDATE` - VITABLE_UPDATE
      #
      #   @param same_payroll_covers_other_eins [Boolean, nil]
      #
      #   @param username [String, nil]
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

      # - `SELF_SETUP` - SELF_SETUP
      # - `NEEDS_HELP` - NEEDS_HELP
      module AccessMethod
        extend VitableConnect::Internal::Type::Enum

        SELF_SETUP = :SELF_SETUP
        NEEDS_HELP = :NEEDS_HELP

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # - `SELF_SETUP` - SELF_SETUP
      # - `NEEDS_HELP` - NEEDS_HELP
      module AdditionalAccessMethod
        extend VitableConnect::Internal::Type::Enum

        SELF_SETUP = :SELF_SETUP
        NEEDS_HELP = :NEEDS_HELP

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # - `ENTER_NAMES` - ENTER_NAMES
      # - `EMAIL_LIST` - EMAIL_LIST
      module ClassificationCorrectionSource
        extend VitableConnect::Internal::Type::Enum

        ENTER_NAMES = :ENTER_NAMES
        EMAIL_LIST = :EMAIL_LIST

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # - `EMAIL_CENSUS` - EMAIL_CENSUS
      # - `SECOND_SYSTEM_ACCESS` - SECOND_SYSTEM_ACCESS
      module MissingEmployeeResolution
        extend VitableConnect::Internal::Type::Enum

        EMAIL_CENSUS = :EMAIL_CENSUS
        SECOND_SYSTEM_ACCESS = :SECOND_SYSTEM_ACCESS

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # - `VITABLE_UPDATE` - VITABLE_UPDATE
      # - `EMPLOYER_UPDATE` - EMPLOYER_UPDATE
      module RemainingEmployeeAction
        extend VitableConnect::Internal::Type::Enum

        VITABLE_UPDATE = :VITABLE_UPDATE
        EMPLOYER_UPDATE = :EMPLOYER_UPDATE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
