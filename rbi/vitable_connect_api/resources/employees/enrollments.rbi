# typed: strong

module VitableConnectAPI
  module Resources
    class Employees
      class Enrollments
        # Retrieves a paginated list of benefit enrollments for an employee. Enrollments
        # have statuses: 'pending' (in enrollment period), 'enrolled' (active coverage),
        # or 'inactive' (terminated, expired, or unanswered). Filter by status, plan year,
        # or coverage year.
        sig do
          params(
            employee_id: String,
            coverage_effective_start_year: Integer,
            limit: Integer,
            page: Integer,
            plan_year: Integer,
            status: VitableConnectAPI::Employees::EnrollmentStatus::OrSymbol,
            request_options: VitableConnectAPI::RequestOptions::OrHash
          ).returns(T::Array[VitableConnectAPI::Enrollment])
        end
        def list(
          # Unique employee identifier (empl\_\*)
          employee_id,
          # Filter by coverage year
          coverage_effective_start_year: nil,
          # Items per page (default: 20, max: 100)
          limit: nil,
          # Page number (default: 1)
          page: nil,
          # Filter by plan year start (YYYY)
          plan_year: nil,
          # Filter by enrollment status
          status: nil,
          request_options: {}
        )
        end

        # Completes the benefits election process for all pending enrollments for an
        # employee. Processes enrollment decisions: which benefits to enroll/waive, plan
        # selections, and dependent coverage. Pending enrollments transition to enrolled
        # or waived status based on elections.
        sig do
          params(
            employee_id: String,
            elections:
              T::Array[
                VitableConnectAPI::Employees::EnrollmentSubmitElectionsParams::Election::OrHash
              ],
            request_options: VitableConnectAPI::RequestOptions::OrHash
          ).returns(T::Array[VitableConnectAPI::Enrollment])
        end
        def submit_elections(
          # Unique employee identifier (empl\_\*)
          employee_id,
          # List of enrollment elections
          elections:,
          request_options: {}
        )
        end

        # @api private
        sig do
          params(client: VitableConnectAPI::Client).returns(T.attached_class)
        end
        def self.new(client:)
        end
      end
    end
  end
end
