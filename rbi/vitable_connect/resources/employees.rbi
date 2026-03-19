# typed: strong

module VitableConnect
  module Resources
    class Employees
      # Retrieves detailed information for a specific employee by ID. Returns employee
      # details including personal information and employment status.
      sig do
        params(
          employee_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::EmployeeRetrieveResponse)
      end
      def retrieve(
        # Unique employee identifier (empl\_\*)
        employee_id,
        request_options: {}
      )
      end

      # Retrieves a paginated list of benefit enrollments for an employee.
      sig do
        params(
          employee_id: String,
          limit: Integer,
          page: Integer,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(
          VitableConnect::Internal::PageNumberPage[VitableConnect::Enrollment]
        )
      end
      def list_enrollments(
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
