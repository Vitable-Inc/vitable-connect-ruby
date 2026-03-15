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

      # Updates an existing employee's information. All fields are optional - only
      # provided fields will be updated. Note: SSN, name, date of birth, and sex cannot
      # be changed after creation.
      sig do
        params(
          employee_id: String,
          address:
            T.nilable(VitableConnect::EmployeeUpdateParams::Address::OrHash),
          email: T.nilable(String),
          employee_class: T.nilable(VitableConnect::EmployeeClass::OrSymbol),
          gender: T.nilable(String),
          phone: T.nilable(String),
          termination_date: T.nilable(Date),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::EmployeeResponse)
      end
      def update(
        # Unique employee identifier (empl\_\*)
        employee_id,
        # Employee's residential address
        address: nil,
        # Email address
        email: nil,
        # - `Full Time` - Full Time
        # - `Part Time` - Part Time
        # - `Temporary` - Temporary
        # - `Intern` - Intern
        # - `Seasonal` - Seasonal
        # - `Individual Contractor` - Individual Contractor
        employee_class: nil,
        # Gender identity
        gender: nil,
        # Phone number
        phone: nil,
        # Termination date if terminating
        termination_date: nil,
        request_options: {}
      )
      end

      # Terminates a specific employee. This sets the employee's active status to false
      # and records a termination date. The employee record is not permanently deleted
      # for compliance reasons.
      sig do
        params(
          employee_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).void
      end
      def terminate(
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
