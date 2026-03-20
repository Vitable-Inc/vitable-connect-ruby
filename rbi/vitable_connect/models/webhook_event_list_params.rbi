# typed: strong

module VitableConnect
  module Models
    class WebhookEventListParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::WebhookEventListParams,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # - `enrollment.accepted` - Enrollment Accepted
      # - `enrollment.terminated` - Enrollment Terminated
      # - `enrollment.elected` - Enrollment Elected
      # - `enrollment.granted` - Enrollment Granted
      # - `enrollment.waived` - Enrollment Waived
      # - `enrollment.started` - Enrollment Started
      # - `employee.eligibility_granted` - Employee Eligibility Granted
      # - `employee.eligibility_terminated` - Employee Eligibility Terminated
      # - `employee.deactivated` - Employee Deactivated
      # - `payroll_deduction.created` - Payroll Deduction Created
      # - `plan_year.eligibility_policy_created` - Plan Year Eligibility Policy Created
      sig do
        returns(
          T.nilable(VitableConnect::WebhookEventListParams::EventName::OrSymbol)
        )
      end
      attr_reader :event_name

      sig do
        params(
          event_name:
            VitableConnect::WebhookEventListParams::EventName::OrSymbol
        ).void
      end
      attr_writer :event_name

      # Items per page (default: 20, max: 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Page number (default: 1)
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      sig { returns(T.nilable(String)) }
      attr_reader :resource_id

      sig { params(resource_id: String).void }
      attr_writer :resource_id

      # - `enrollment` - Enrollment
      # - `employee` - Employee
      # - `employer` - Employer
      # - `dependent` - Dependent
      # - `plan_year` - Plan Year
      # - `payroll_deduction` - Payroll Deduction
      sig do
        returns(
          T.nilable(
            VitableConnect::WebhookEventListParams::ResourceType::OrSymbol
          )
        )
      end
      attr_reader :resource_type

      sig do
        params(
          resource_type:
            VitableConnect::WebhookEventListParams::ResourceType::OrSymbol
        ).void
      end
      attr_writer :resource_type

      sig do
        params(
          created_after: Time,
          created_before: Time,
          event_name:
            VitableConnect::WebhookEventListParams::EventName::OrSymbol,
          limit: Integer,
          page: Integer,
          resource_id: String,
          resource_type:
            VitableConnect::WebhookEventListParams::ResourceType::OrSymbol,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        created_after: nil,
        created_before: nil,
        # - `enrollment.accepted` - Enrollment Accepted
        # - `enrollment.terminated` - Enrollment Terminated
        # - `enrollment.elected` - Enrollment Elected
        # - `enrollment.granted` - Enrollment Granted
        # - `enrollment.waived` - Enrollment Waived
        # - `enrollment.started` - Enrollment Started
        # - `employee.eligibility_granted` - Employee Eligibility Granted
        # - `employee.eligibility_terminated` - Employee Eligibility Terminated
        # - `employee.deactivated` - Employee Deactivated
        # - `payroll_deduction.created` - Payroll Deduction Created
        # - `plan_year.eligibility_policy_created` - Plan Year Eligibility Policy Created
        event_name: nil,
        # Items per page (default: 20, max: 100)
        limit: nil,
        # Page number (default: 1)
        page: nil,
        resource_id: nil,
        # - `enrollment` - Enrollment
        # - `employee` - Employee
        # - `employer` - Employer
        # - `dependent` - Dependent
        # - `plan_year` - Plan Year
        # - `payroll_deduction` - Payroll Deduction
        resource_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            created_after: Time,
            created_before: Time,
            event_name:
              VitableConnect::WebhookEventListParams::EventName::OrSymbol,
            limit: Integer,
            page: Integer,
            resource_id: String,
            resource_type:
              VitableConnect::WebhookEventListParams::ResourceType::OrSymbol,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end

      # - `enrollment.accepted` - Enrollment Accepted
      # - `enrollment.terminated` - Enrollment Terminated
      # - `enrollment.elected` - Enrollment Elected
      # - `enrollment.granted` - Enrollment Granted
      # - `enrollment.waived` - Enrollment Waived
      # - `enrollment.started` - Enrollment Started
      # - `employee.eligibility_granted` - Employee Eligibility Granted
      # - `employee.eligibility_terminated` - Employee Eligibility Terminated
      # - `employee.deactivated` - Employee Deactivated
      # - `payroll_deduction.created` - Payroll Deduction Created
      # - `plan_year.eligibility_policy_created` - Plan Year Eligibility Policy Created
      module EventName
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnect::WebhookEventListParams::EventName)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENROLLMENT_ACCEPTED =
          T.let(
            :"enrollment.accepted",
            VitableConnect::WebhookEventListParams::EventName::TaggedSymbol
          )
        ENROLLMENT_TERMINATED =
          T.let(
            :"enrollment.terminated",
            VitableConnect::WebhookEventListParams::EventName::TaggedSymbol
          )
        ENROLLMENT_ELECTED =
          T.let(
            :"enrollment.elected",
            VitableConnect::WebhookEventListParams::EventName::TaggedSymbol
          )
        ENROLLMENT_GRANTED =
          T.let(
            :"enrollment.granted",
            VitableConnect::WebhookEventListParams::EventName::TaggedSymbol
          )
        ENROLLMENT_WAIVED =
          T.let(
            :"enrollment.waived",
            VitableConnect::WebhookEventListParams::EventName::TaggedSymbol
          )
        ENROLLMENT_STARTED =
          T.let(
            :"enrollment.started",
            VitableConnect::WebhookEventListParams::EventName::TaggedSymbol
          )
        EMPLOYEE_ELIGIBILITY_GRANTED =
          T.let(
            :"employee.eligibility_granted",
            VitableConnect::WebhookEventListParams::EventName::TaggedSymbol
          )
        EMPLOYEE_ELIGIBILITY_TERMINATED =
          T.let(
            :"employee.eligibility_terminated",
            VitableConnect::WebhookEventListParams::EventName::TaggedSymbol
          )
        EMPLOYEE_DEACTIVATED =
          T.let(
            :"employee.deactivated",
            VitableConnect::WebhookEventListParams::EventName::TaggedSymbol
          )
        PAYROLL_DEDUCTION_CREATED =
          T.let(
            :"payroll_deduction.created",
            VitableConnect::WebhookEventListParams::EventName::TaggedSymbol
          )
        PLAN_YEAR_ELIGIBILITY_POLICY_CREATED =
          T.let(
            :"plan_year.eligibility_policy_created",
            VitableConnect::WebhookEventListParams::EventName::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::WebhookEventListParams::EventName::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # - `enrollment` - Enrollment
      # - `employee` - Employee
      # - `employer` - Employer
      # - `dependent` - Dependent
      # - `plan_year` - Plan Year
      # - `payroll_deduction` - Payroll Deduction
      module ResourceType
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnect::WebhookEventListParams::ResourceType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENROLLMENT =
          T.let(
            :enrollment,
            VitableConnect::WebhookEventListParams::ResourceType::TaggedSymbol
          )
        EMPLOYEE =
          T.let(
            :employee,
            VitableConnect::WebhookEventListParams::ResourceType::TaggedSymbol
          )
        EMPLOYER =
          T.let(
            :employer,
            VitableConnect::WebhookEventListParams::ResourceType::TaggedSymbol
          )
        DEPENDENT =
          T.let(
            :dependent,
            VitableConnect::WebhookEventListParams::ResourceType::TaggedSymbol
          )
        PLAN_YEAR =
          T.let(
            :plan_year,
            VitableConnect::WebhookEventListParams::ResourceType::TaggedSymbol
          )
        PAYROLL_DEDUCTION =
          T.let(
            :payroll_deduction,
            VitableConnect::WebhookEventListParams::ResourceType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::WebhookEventListParams::ResourceType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
