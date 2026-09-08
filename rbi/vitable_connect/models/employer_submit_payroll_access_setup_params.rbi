# typed: strong

module VitableConnect
  module Models
    class EmployerSubmitPayrollAccessSetupParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployerSubmitPayrollAccessSetupParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique employer identifier (empr\_\*)
      sig { returns(String) }
      attr_accessor :employer_id

      # - `SELF_SETUP` - SELF_SETUP
      # - `NEEDS_HELP` - NEEDS_HELP
      sig do
        returns(
          VitableConnect::EmployerSubmitPayrollAccessSetupParams::AccessMethod::OrSymbol
        )
      end
      attr_accessor :access_method

      sig { returns(T::Boolean) }
      attr_accessor :all_benefit_eligible_employees_present

      sig { returns(T::Boolean) }
      attr_accessor :classifications_accurate

      sig { returns(T::Boolean) }
      attr_accessor :employees_in_payroll_acknowledged

      sig { returns(T::Boolean) }
      attr_accessor :has_additional_payroll_system

      sig { returns(T::Boolean) }
      attr_accessor :is_controlled_group

      sig { returns(T::Boolean) }
      attr_accessor :payroll_data_impacts_eligibility_acknowledged

      # - `SELF_SETUP` - SELF_SETUP
      # - `NEEDS_HELP` - NEEDS_HELP
      sig do
        returns(
          T.nilable(
            VitableConnect::EmployerSubmitPayrollAccessSetupParams::AdditionalAccessMethod::OrSymbol
          )
        )
      end
      attr_accessor :additional_access_method

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :additional_integration_confirmed

      sig { returns(T.nilable(String)) }
      attr_accessor :additional_login_url

      sig { returns(T.nilable(String)) }
      attr_accessor :additional_password

      sig { returns(T.nilable(String)) }
      attr_accessor :additional_phone

      sig { returns(T.nilable(String)) }
      attr_accessor :additional_username

      # - `ENTER_NAMES` - ENTER_NAMES
      # - `EMAIL_LIST` - EMAIL_LIST
      sig do
        returns(
          T.nilable(
            VitableConnect::EmployerSubmitPayrollAccessSetupParams::ClassificationCorrectionSource::OrSymbol
          )
        )
      end
      attr_accessor :classification_correction_source

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :integration_confirmed

      sig { returns(T.nilable(String)) }
      attr_accessor :login_url

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :misclassified_employee_names

      sig { params(misclassified_employee_names: T::Array[String]).void }
      attr_writer :misclassified_employee_names

      # - `EMAIL_CENSUS` - EMAIL_CENSUS
      # - `SECOND_SYSTEM_ACCESS` - SECOND_SYSTEM_ACCESS
      sig do
        returns(
          T.nilable(
            VitableConnect::EmployerSubmitPayrollAccessSetupParams::MissingEmployeeResolution::OrSymbol
          )
        )
      end
      attr_accessor :missing_employee_resolution

      sig { returns(T.nilable(String)) }
      attr_accessor :password

      sig { returns(T.nilable(String)) }
      attr_accessor :phone

      # - `VITABLE_UPDATE` - VITABLE_UPDATE
      # - `EMPLOYER_UPDATE` - EMPLOYER_UPDATE
      sig do
        returns(
          T.nilable(
            VitableConnect::EmployerSubmitPayrollAccessSetupParams::RemainingEmployeeAction::OrSymbol
          )
        )
      end
      attr_accessor :remaining_employee_action

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :same_payroll_covers_other_eins

      sig { returns(T.nilable(String)) }
      attr_accessor :username

      sig do
        params(
          employer_id: String,
          access_method:
            VitableConnect::EmployerSubmitPayrollAccessSetupParams::AccessMethod::OrSymbol,
          all_benefit_eligible_employees_present: T::Boolean,
          classifications_accurate: T::Boolean,
          employees_in_payroll_acknowledged: T::Boolean,
          has_additional_payroll_system: T::Boolean,
          is_controlled_group: T::Boolean,
          payroll_data_impacts_eligibility_acknowledged: T::Boolean,
          additional_access_method:
            T.nilable(
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::AdditionalAccessMethod::OrSymbol
            ),
          additional_integration_confirmed: T.nilable(T::Boolean),
          additional_login_url: T.nilable(String),
          additional_password: T.nilable(String),
          additional_phone: T.nilable(String),
          additional_username: T.nilable(String),
          classification_correction_source:
            T.nilable(
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::ClassificationCorrectionSource::OrSymbol
            ),
          integration_confirmed: T.nilable(T::Boolean),
          login_url: T.nilable(String),
          misclassified_employee_names: T::Array[String],
          missing_employee_resolution:
            T.nilable(
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::MissingEmployeeResolution::OrSymbol
            ),
          password: T.nilable(String),
          phone: T.nilable(String),
          remaining_employee_action:
            T.nilable(
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::RemainingEmployeeAction::OrSymbol
            ),
          same_payroll_covers_other_eins: T.nilable(T::Boolean),
          username: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique employer identifier (empr\_\*)
        employer_id:,
        # - `SELF_SETUP` - SELF_SETUP
        # - `NEEDS_HELP` - NEEDS_HELP
        access_method:,
        all_benefit_eligible_employees_present:,
        classifications_accurate:,
        employees_in_payroll_acknowledged:,
        has_additional_payroll_system:,
        is_controlled_group:,
        payroll_data_impacts_eligibility_acknowledged:,
        # - `SELF_SETUP` - SELF_SETUP
        # - `NEEDS_HELP` - NEEDS_HELP
        additional_access_method: nil,
        additional_integration_confirmed: nil,
        additional_login_url: nil,
        additional_password: nil,
        additional_phone: nil,
        additional_username: nil,
        # - `ENTER_NAMES` - ENTER_NAMES
        # - `EMAIL_LIST` - EMAIL_LIST
        classification_correction_source: nil,
        integration_confirmed: nil,
        login_url: nil,
        misclassified_employee_names: nil,
        # - `EMAIL_CENSUS` - EMAIL_CENSUS
        # - `SECOND_SYSTEM_ACCESS` - SECOND_SYSTEM_ACCESS
        missing_employee_resolution: nil,
        password: nil,
        phone: nil,
        # - `VITABLE_UPDATE` - VITABLE_UPDATE
        # - `EMPLOYER_UPDATE` - EMPLOYER_UPDATE
        remaining_employee_action: nil,
        same_payroll_covers_other_eins: nil,
        username: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            employer_id: String,
            access_method:
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::AccessMethod::OrSymbol,
            all_benefit_eligible_employees_present: T::Boolean,
            classifications_accurate: T::Boolean,
            employees_in_payroll_acknowledged: T::Boolean,
            has_additional_payroll_system: T::Boolean,
            is_controlled_group: T::Boolean,
            payroll_data_impacts_eligibility_acknowledged: T::Boolean,
            additional_access_method:
              T.nilable(
                VitableConnect::EmployerSubmitPayrollAccessSetupParams::AdditionalAccessMethod::OrSymbol
              ),
            additional_integration_confirmed: T.nilable(T::Boolean),
            additional_login_url: T.nilable(String),
            additional_password: T.nilable(String),
            additional_phone: T.nilable(String),
            additional_username: T.nilable(String),
            classification_correction_source:
              T.nilable(
                VitableConnect::EmployerSubmitPayrollAccessSetupParams::ClassificationCorrectionSource::OrSymbol
              ),
            integration_confirmed: T.nilable(T::Boolean),
            login_url: T.nilable(String),
            misclassified_employee_names: T::Array[String],
            missing_employee_resolution:
              T.nilable(
                VitableConnect::EmployerSubmitPayrollAccessSetupParams::MissingEmployeeResolution::OrSymbol
              ),
            password: T.nilable(String),
            phone: T.nilable(String),
            remaining_employee_action:
              T.nilable(
                VitableConnect::EmployerSubmitPayrollAccessSetupParams::RemainingEmployeeAction::OrSymbol
              ),
            same_payroll_covers_other_eins: T.nilable(T::Boolean),
            username: T.nilable(String),
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end

      # - `SELF_SETUP` - SELF_SETUP
      # - `NEEDS_HELP` - NEEDS_HELP
      module AccessMethod
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::AccessMethod
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SELF_SETUP =
          T.let(
            :SELF_SETUP,
            VitableConnect::EmployerSubmitPayrollAccessSetupParams::AccessMethod::TaggedSymbol
          )
        NEEDS_HELP =
          T.let(
            :NEEDS_HELP,
            VitableConnect::EmployerSubmitPayrollAccessSetupParams::AccessMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::AccessMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # - `SELF_SETUP` - SELF_SETUP
      # - `NEEDS_HELP` - NEEDS_HELP
      module AdditionalAccessMethod
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::AdditionalAccessMethod
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SELF_SETUP =
          T.let(
            :SELF_SETUP,
            VitableConnect::EmployerSubmitPayrollAccessSetupParams::AdditionalAccessMethod::TaggedSymbol
          )
        NEEDS_HELP =
          T.let(
            :NEEDS_HELP,
            VitableConnect::EmployerSubmitPayrollAccessSetupParams::AdditionalAccessMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::AdditionalAccessMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # - `ENTER_NAMES` - ENTER_NAMES
      # - `EMAIL_LIST` - EMAIL_LIST
      module ClassificationCorrectionSource
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::ClassificationCorrectionSource
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENTER_NAMES =
          T.let(
            :ENTER_NAMES,
            VitableConnect::EmployerSubmitPayrollAccessSetupParams::ClassificationCorrectionSource::TaggedSymbol
          )
        EMAIL_LIST =
          T.let(
            :EMAIL_LIST,
            VitableConnect::EmployerSubmitPayrollAccessSetupParams::ClassificationCorrectionSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::ClassificationCorrectionSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # - `EMAIL_CENSUS` - EMAIL_CENSUS
      # - `SECOND_SYSTEM_ACCESS` - SECOND_SYSTEM_ACCESS
      module MissingEmployeeResolution
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::MissingEmployeeResolution
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL_CENSUS =
          T.let(
            :EMAIL_CENSUS,
            VitableConnect::EmployerSubmitPayrollAccessSetupParams::MissingEmployeeResolution::TaggedSymbol
          )
        SECOND_SYSTEM_ACCESS =
          T.let(
            :SECOND_SYSTEM_ACCESS,
            VitableConnect::EmployerSubmitPayrollAccessSetupParams::MissingEmployeeResolution::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::MissingEmployeeResolution::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # - `VITABLE_UPDATE` - VITABLE_UPDATE
      # - `EMPLOYER_UPDATE` - EMPLOYER_UPDATE
      module RemainingEmployeeAction
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::RemainingEmployeeAction
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VITABLE_UPDATE =
          T.let(
            :VITABLE_UPDATE,
            VitableConnect::EmployerSubmitPayrollAccessSetupParams::RemainingEmployeeAction::TaggedSymbol
          )
        EMPLOYER_UPDATE =
          T.let(
            :EMPLOYER_UPDATE,
            VitableConnect::EmployerSubmitPayrollAccessSetupParams::RemainingEmployeeAction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::RemainingEmployeeAction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
