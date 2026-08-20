# frozen_string_literal: true

module VitableConnect
  module Resources
    class Employees
      # Retrieves detailed information for a specific employee by ID. Returns employee
      # details including personal information, employment status, classification and
      # compensation-type effective dates, compensation type, and payroll deductions
      # from the most recent statement period. Deductions reflect a snapshot of the
      # current period and are replaced when a new statement is generated.
      #
      # @overload retrieve(employee_id, request_options: {})
      #
      # @param employee_id [String] Unique employee identifier (empl\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployeeRetrieveResponse]
      #
      # @see VitableConnect::Models::EmployeeRetrieveParams
      def retrieve(employee_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/employees/%1$s", employee_id],
          model: VitableConnect::Models::EmployeeRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {VitableConnect::Models::EmployeeUpdateParams} for more details.
      #
      # Updates employee personal, contact, address, and employment fields. This
      # endpoint currently supports email, phone, gender, address, employee_class,
      # start_date, and compensation_type. effective_date is required and applies to
      # employee_class and compensation_type when those fields are included in the
      # request.
      #
      # @overload update(employee_id, effective_date:, address: nil, compensation_type: nil, email: nil, employee_class: nil, gender: nil, phone: nil, start_date: nil, request_options: {})
      #
      # @param employee_id [String] Unique employee identifier (empl\_\*)
      #
      # @param effective_date [Date] Past or present date applied to each tracked employment field included in this r
      #
      # @param address [VitableConnect::Models::EmployeeUpdateParams::Address, nil] Employee's residential address
      #
      # @param compensation_type [Symbol, VitableConnect::Models::EmployeeUpdateParams::CompensationType, nil] - `Salary` - Salary
      #
      # @param email [String, nil] Email address
      #
      # @param employee_class [Symbol, VitableConnect::Models::EmployeeClass, nil] - `Full Time` - Full Time
      #
      # @param gender [Symbol, VitableConnect::Models::EmployeeUpdateParams::Gender, nil] - `Male` - Male
      #
      # @param phone [String, nil] Phone number
      #
      # @param start_date [Date, nil] Employment start date
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployeeUpdateResponse]
      #
      # @see VitableConnect::Models::EmployeeUpdateParams
      def update(employee_id, params)
        parsed, options = VitableConnect::EmployeeUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/employees/%1$s", employee_id],
          body: parsed,
          model: VitableConnect::Models::EmployeeUpdateResponse,
          options: options
        )
      end

      # Retrieves a paginated list of benefit enrollments for an employee.
      #
      # @overload list_enrollments(employee_id, limit: nil, page: nil, request_options: {})
      #
      # @param employee_id [String] Unique employee identifier (empl\_\*)
      #
      # @param limit [Integer] Items per page (default: 20, max: 100)
      #
      # @param page [Integer] Page number (default: 1)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Internal::PageNumberPage<VitableConnect::Models::Enrollment>]
      #
      # @see VitableConnect::Models::EmployeeListEnrollmentsParams
      def list_enrollments(employee_id, params = {})
        parsed, options = VitableConnect::EmployeeListEnrollmentsParams.dump_request(params)
        query = VitableConnect::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["v1/employees/%1$s/enrollments", employee_id],
          query: query,
          page: VitableConnect::Internal::PageNumberPage,
          model: VitableConnect::Enrollment,
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
