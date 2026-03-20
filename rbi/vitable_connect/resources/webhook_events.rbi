# typed: strong

module VitableConnect
  module Resources
    class WebhookEvents
      # Retrieves a single webhook event by its prefixed ID. Returns 404 if the event
      # does not exist or belongs to a different organization.
      sig do
        params(
          event_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::WebhookEventRetrieveResponse)
      end
      def retrieve(event_id, request_options: {})
      end

      # Retrieves a paginated list of webhook events for the authenticated organization.
      # Supports filtering by event name, resource type, resource ID, and date range.
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
        ).returns(
          VitableConnect::Internal::PageNumberPage[VitableConnect::WebhookEvent]
        )
      end
      def list(
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

      # Retrieves all delivery attempts for a webhook event. Returns up to 100
      # deliveries. Each delivery includes a computed status field (Pending, In
      # Progress, Delivered, or Failed).
      sig do
        params(
          event_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::WebhookEventListDeliveriesResponse)
      end
      def list_deliveries(event_id, request_options: {})
      end

      # @api private
      sig { params(client: VitableConnect::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
