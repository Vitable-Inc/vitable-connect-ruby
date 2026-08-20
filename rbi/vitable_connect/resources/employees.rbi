# typed: strong

module VitableConnect
  module Resources
    class Employees
      # Retrieves detailed information for a specific employee by ID. Returns employee
      # details including personal information, employment status, classification and
      # compensation-type effective dates, compensation type, and payroll deductions
      # from the most recent statement period. Deductions reflect a snapshot of the
      # current period and are replaced when a new statement is generated.
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

      # Updates employee personal, contact, address, and employment fields. This
      # endpoint currently supports email, phone, gender, address, employee_class,
      # start_date, and compensation_type. effective_date is required and applies to
      # employee_class and compensation_type when those fields are included in the
      # request.
      sig do
        params(
          employee_id: String,
          effective_date: Date,
          address:
            T.nilable(VitableConnect::EmployeeUpdateParams::Address::OrHash),
          compensation_type:
            T.nilable(
              VitableConnect::EmployeeUpdateParams::CompensationType::OrSymbol
            ),
          email: T.nilable(String),
          employee_class: T.nilable(VitableConnect::EmployeeClass::OrSymbol),
          gender:
            T.nilable(VitableConnect::EmployeeUpdateParams::Gender::OrSymbol),
          phone: T.nilable(String),
          start_date: T.nilable(Date),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::EmployeeUpdateResponse)
      end
      def update(
        # Unique employee identifier (empl\_\*)
        employee_id,
        # Past or present date applied to each tracked employment field included in this
        # request
        effective_date:,
        # Employee's residential address
        address: nil,
        # - `Salary` - Salary
        # - `Hourly` - Hourly
        compensation_type: nil,
        # Email address
        email: nil,
        # - `Full Time` - Full Time
        # - `Part Time` - Part Time
        # - `Temporary` - Temporary
        # - `Intern` - Intern
        # - `Seasonal` - Seasonal
        # - `Individual Contractor` - Individual Contractor
        employee_class: nil,
        # - `Male` - Male
        # - `Female` - Female
        # - `Transgender` - Transgender
        # - `Non-binary` - Non-binary
        # - `Prefer not to respond` - Prefer not to respond
        gender: nil,
        # Phone number
        phone: nil,
        # Employment start date
        start_date: nil,
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
