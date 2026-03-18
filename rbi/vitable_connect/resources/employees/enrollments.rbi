# typed: strong

module VitableConnect
  module Resources
    class Employees
      # Manage benefit enrollments and elections for employees
      class Enrollments
        # Retrieves a paginated list of benefit enrollments for an employee.
        sig do
          params(
            employee_id: String,
            limit: Integer,
            page: Integer,
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(VitableConnect::Employees::EnrollmentList)
        end
        def list(
          # Unique employee identifier (empl\_\*)
          employee_id,
          # Items per page (default: 20, max: 100)
          limit: nil,
          # Page number (default: 1)
          page: nil,
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
