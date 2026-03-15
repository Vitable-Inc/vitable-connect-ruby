# frozen_string_literal: true

module VitableConnect
  module Resources
    class Employers
      # Manage employee records for employers
      class Employees
        # Some parameter documentations has been truncated, see
        # {VitableConnect::Models::Employers::EmployeeCreateParams} for more details.
        #
        # Creates a new employee for a specific employer. Requires personal information
        # (name, DOB, SSN) and employment details (start date). Note: SSN can only be
        # specified at creation time and cannot be updated later. Returns the created
        # employee with assigned ID.
        #
        # @overload create(employer_id, date_of_birth:, email:, first_name:, last_name:, sex:, ssn:, start_date:, address: nil, employee_class: nil, gender: nil, phone: nil, suffix: nil, request_options: {})
        #
        # @param employer_id [String] Filter by employer ID
        #
        # @param date_of_birth [Date] Date of birth (YYYY-MM-DD)
        #
        # @param email [String] Email address
        #
        # @param first_name [String] Employee's legal first name
        #
        # @param last_name [String] Employee's legal last name
        #
        # @param sex [Symbol, VitableConnect::Models::Sex] - `Male` - Male
        #
        # @param ssn [String] Social Security Number (XXX-XX-XXXX or XXXXXXXXX). Only accepted on create.
        #
        # @param start_date [Date] Employment start/hire date
        #
        # @param address [VitableConnect::Models::Employers::EmployeeCreateParams::Address, nil] Employee's residential address
        #
        # @param employee_class [Symbol, VitableConnect::Models::EmployeeClass, nil] - `Full Time` - Full Time
        #
        # @param gender [String, nil] Gender identity
        #
        # @param phone [String, nil] Phone number
        #
        # @param suffix [String, nil] Name suffix (Jr., Sr., III)
        #
        # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitableConnect::Models::EmployeeResponse]
        #
        # @see VitableConnect::Models::Employers::EmployeeCreateParams
        def create(employer_id, params)
          parsed, options = VitableConnect::Employers::EmployeeCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/employers/%1$s/employees", employer_id],
            body: parsed,
            model: VitableConnect::EmployeeResponse,
            options: options
          )
        end

        # Retrieves a paginated list of all employees for a specific employer. Use query
        # parameters to filter by active status or employment classification. Results are
        # paginated using page and limit parameters.
        #
        # @overload list(employer_id, active_in: nil, employee_class: nil, limit: nil, page: nil, request_options: {})
        #
        # @param employer_id [String] Filter by employer ID
        #
        # @param active_in [Boolean] Filter by active status
        #
        # @param employee_class [Symbol, VitableConnect::Models::EmployeeClass] Filter by employment classification
        #
        # @param limit [Integer] Items per page (default: 20, max: 100)
        #
        # @param page [Integer] Page number (default: 1)
        #
        # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitableConnect::Models::Employers::EmployeeListResponse]
        #
        # @see VitableConnect::Models::Employers::EmployeeListParams
        def list(employer_id, params = {})
          parsed, options = VitableConnect::Employers::EmployeeListParams.dump_request(params)
          query = VitableConnect::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["v1/employers/%1$s/employees", employer_id],
            query: query,
            model: VitableConnect::Models::Employers::EmployeeListResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [VitableConnect::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
