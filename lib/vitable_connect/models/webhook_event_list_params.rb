# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::WebhookEvents#list
    class WebhookEventListParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute created_after
      #
      #   @return [Time, nil]
      optional :created_after, Time

      # @!attribute created_before
      #
      #   @return [Time, nil]
      optional :created_before, Time

      # @!attribute event_name
      #   - `enrollment.accepted` - Enrollment Accepted
      #   - `enrollment.terminated` - Enrollment Terminated
      #   - `enrollment.elected` - Enrollment Elected
      #   - `enrollment.granted` - Enrollment Granted
      #   - `enrollment.waived` - Enrollment Waived
      #   - `enrollment.started` - Enrollment Started
      #   - `employee.eligibility_granted` - Employee Eligibility Granted
      #   - `employee.eligibility_terminated` - Employee Eligibility Terminated
      #   - `employee.deactivated` - Employee Deactivated
      #   - `payroll_deduction.created` - Payroll Deduction Created
      #   - `employer.eligibility_policy_created` - Employer Eligibility Policy Created
      #
      #   @return [Symbol, VitableConnect::Models::WebhookEventListParams::EventName, nil]
      optional :event_name, enum: -> { VitableConnect::WebhookEventListParams::EventName }

      # @!attribute limit
      #   Items per page (default: 20, max: 100)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute page
      #   Page number (default: 1)
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute resource_id
      #
      #   @return [String, nil]
      optional :resource_id, String

      # @!attribute resource_type
      #   - `enrollment` - Enrollment
      #   - `employee` - Employee
      #   - `employer` - Employer
      #   - `dependent` - Dependent
      #   - `plan_year` - Plan Year
      #   - `payroll_deduction` - Payroll Deduction
      #
      #   @return [Symbol, VitableConnect::Models::WebhookEventListParams::ResourceType, nil]
      optional :resource_type, enum: -> { VitableConnect::WebhookEventListParams::ResourceType }

      # @!method initialize(created_after: nil, created_before: nil, event_name: nil, limit: nil, page: nil, resource_id: nil, resource_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::WebhookEventListParams} for more details.
      #
      #   @param created_after [Time]
      #
      #   @param created_before [Time]
      #
      #   @param event_name [Symbol, VitableConnect::Models::WebhookEventListParams::EventName] - `enrollment.accepted` - Enrollment Accepted
      #
      #   @param limit [Integer] Items per page (default: 20, max: 100)
      #
      #   @param page [Integer] Page number (default: 1)
      #
      #   @param resource_id [String]
      #
      #   @param resource_type [Symbol, VitableConnect::Models::WebhookEventListParams::ResourceType] - `enrollment` - Enrollment
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

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
      # - `employer.eligibility_policy_created` - Employer Eligibility Policy Created
      module EventName
        extend VitableConnect::Internal::Type::Enum

        ENROLLMENT_ACCEPTED = :"enrollment.accepted"
        ENROLLMENT_TERMINATED = :"enrollment.terminated"
        ENROLLMENT_ELECTED = :"enrollment.elected"
        ENROLLMENT_GRANTED = :"enrollment.granted"
        ENROLLMENT_WAIVED = :"enrollment.waived"
        ENROLLMENT_STARTED = :"enrollment.started"
        EMPLOYEE_ELIGIBILITY_GRANTED = :"employee.eligibility_granted"
        EMPLOYEE_ELIGIBILITY_TERMINATED = :"employee.eligibility_terminated"
        EMPLOYEE_DEACTIVATED = :"employee.deactivated"
        PAYROLL_DEDUCTION_CREATED = :"payroll_deduction.created"
        EMPLOYER_ELIGIBILITY_POLICY_CREATED = :"employer.eligibility_policy_created"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # - `enrollment` - Enrollment
      # - `employee` - Employee
      # - `employer` - Employer
      # - `dependent` - Dependent
      # - `plan_year` - Plan Year
      # - `payroll_deduction` - Payroll Deduction
      module ResourceType
        extend VitableConnect::Internal::Type::Enum

        ENROLLMENT = :enrollment
        EMPLOYEE = :employee
        EMPLOYER = :employer
        DEPENDENT = :dependent
        PLAN_YEAR = :plan_year
        PAYROLL_DEDUCTION = :payroll_deduction

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
