# typed: strong

module VitableConnect
  module Resources
    class Employees
      # Manage benefit enrollments and elections for employees
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
            status: VitableConnect::EnrollmentStatus::OrSymbol,
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(VitableConnect::Employees::EnrollmentList)
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
                VitableConnect::Employees::EnrollmentSubmitElectionsParams::Election::OrHash
              ],
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(VitableConnect::Employees::EnrollmentList)
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
        sig { params(client: VitableConnect::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
