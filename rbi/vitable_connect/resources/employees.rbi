# typed: strong

module VitableConnect
  module Resources
    # Manage employee records for employers
    class Employees
      # Manage benefit enrollments and elections for employees
      sig { returns(VitableConnect::Resources::Employees::Enrollments) }
      attr_reader :enrollments

      # Retrieves detailed information for a specific employee by ID. Returns employee
      # details including personal information and employment status.
      sig do
        params(
          employee_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::EmployeeResponse)
      end
      def retrieve(
        # Unique employee identifier (empl\_\*)
        employee_id,
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
