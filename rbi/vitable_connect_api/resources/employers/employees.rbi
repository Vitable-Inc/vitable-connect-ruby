# typed: strong

module VitableConnectAPI
  module Resources
    class Employers
      class Employees
        # Creates a new employee for a specific employer. Requires personal information
        # (name, DOB, SSN) and employment details (start date). Note: SSN can only be
        # specified at creation time and cannot be updated later. Returns the created
        # employee with assigned ID.
        sig do
          params(
            employer_id: String,
            date_of_birth: Date,
            email: String,
            first_name: String,
            last_name: String,
            sex: VitableConnectAPI::Sex::OrSymbol,
            ssn: String,
            start_date: Date,
            address:
              T.nilable(
                VitableConnectAPI::Employers::EmployeeCreateParams::Address::OrHash
              ),
            employee_class:
              T.nilable(VitableConnectAPI::Employers::EmployeeClass::OrSymbol),
            gender: T.nilable(String),
            phone: T.nilable(String),
            suffix: T.nilable(String),
            request_options: VitableConnectAPI::RequestOptions::OrHash
          ).returns(
            VitableConnectAPI::Models::Employers::EmployeeCreateResponse
          )
        end
        def create(
          # Filter by employer ID
          employer_id,
          # Date of birth (YYYY-MM-DD)
          date_of_birth:,
          # Email address
          email:,
          # Employee's legal first name
          first_name:,
          # Employee's legal last name
          last_name:,
          # - `Male` - Male
          # - `Female` - Female
          # - `Other` - Other
          # - `Unknown` - Unknown
          sex:,
          # Social Security Number (XXX-XX-XXXX or XXXXXXXXX). Only accepted on create.
          ssn:,
          # Employment start/hire date
          start_date:,
          # Employee's residential address
          address: nil,
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
          # Name suffix (Jr., Sr., III)
          suffix: nil,
          request_options: {}
        )
        end

        # Retrieves a paginated list of all employees for a specific employer. Use query
        # parameters to filter by active status or employment classification. Results are
        # paginated using page and limit parameters.
        sig do
          params(
            employer_id: String,
            active_in: T::Boolean,
            employee_class:
              VitableConnectAPI::Employers::EmployeeClass::OrSymbol,
            limit: Integer,
            page: Integer,
            request_options: VitableConnectAPI::RequestOptions::OrHash
          ).returns(VitableConnectAPI::Models::Employers::EmployeeListResponse)
        end
        def list(
          # Filter by employer ID
          employer_id,
          # Filter by active status
          active_in: nil,
          # Filter by employment classification
          employee_class: nil,
          # Items per page (default: 20, max: 100)
          limit: nil,
          # Page number (default: 1)
          page: nil,
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
