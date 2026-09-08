# typed: strong

module VitableConnect
  module Resources
    # Manage benefit enrollments and elections for employees
    class Enrollments
      # Retrieves a single enrollment: the employee and employer it belongs to, the
      # benefit product, its status, the coverage period, the employee payroll deduction
      # and employer contribution, and the enrolled plan's Summary of Benefits and
      # Coverage document when one is on file. An enrollment the caller cannot reach is
      # indistinguishable from one that does not exist.
      sig do
        params(
          enrollment_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::EnrollmentRetrieveResponse)
      end
      def retrieve(
        # Unique enrollment identifier (enrl\_\*)
        enrollment_id,
        request_options: {}
      )
      end

      # Closes the targeted enrollment and creates a new unanswered enrollment for the
      # same member and plan year. VPC never requires a qualifying life event; other
      # products require an accepted, member-owned event outside open enrollment.
      # User-backed callers must provide a reason; it is optional for organization
      # API-key callers. Tenant mismatches return a non-disclosing 404 before the
      # request body is validated.
      sig do
        params(
          enrollment_id: String,
          qualifying_life_event_id: T.nilable(String),
          reason: T.nilable(String),
          ticket_number: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::EnrollmentReissueResponse)
      end
      def reissue(
        # Unique enrollment identifier (enrl\_\*)
        enrollment_id,
        # Accepted member qualifying life event identifier (qle\_\*)
        qualifying_life_event_id: nil,
        # Audit reason for the reissue; required for user-backed callers and optional for
        # long-lived organization API-key callers
        reason: nil,
        # Optional support or operational ticket number
        ticket_number: nil,
        request_options: {}
      )
      end

      # Terminates enrolled coverage immediately. An accepted qualifying life event
      # owned by the enrollment member is required unless the plan is VPC or ICHRA.
      # User-backed callers must provide a reason; it is optional for organization
      # API-key callers. API keys may act across the caller organization's book. Tenant
      # mismatches return the same non-disclosing 404 before the request body is
      # validated.
      sig do
        params(
          enrollment_id: String,
          qualifying_life_event_id: T.nilable(String),
          reason: T.nilable(String),
          ticket_number: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).void
      end
      def terminate(
        # Unique enrollment identifier (enrl\_\*)
        enrollment_id,
        # Accepted member qualifying life event identifier (qle\_\*)
        qualifying_life_event_id: nil,
        # Audit reason for the termination; required for user-backed callers and optional
        # for long-lived organization API-key callers
        reason: nil,
        # Optional support or operational ticket number
        ticket_number: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: VitableConnect::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
