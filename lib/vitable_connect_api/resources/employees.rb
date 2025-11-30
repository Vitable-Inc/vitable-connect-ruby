# frozen_string_literal: true

module VitableConnectAPI
  module Resources
    class Employees
      # @return [VitableConnectAPI::Resources::Employees::Enrollments]
      attr_reader :enrollments

      # Retrieves detailed information for a specific employee by ID. Returns employee
      # details including personal information and employment status.
      #
      # @overload retrieve(employee_id, request_options: {})
      #
      # @param employee_id [String] Unique employee identifier (empl\_\*)
      #
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnectAPI::Models::Employee]
      #
      # @see VitableConnectAPI::Models::EmployeeRetrieveParams
      def retrieve(employee_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/employees/%1$s", employee_id],
          model: VitableConnectAPI::Employee,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {VitableConnectAPI::Models::EmployeeUpdateParams} for more details.
      #
      # Updates an existing employee's information. All fields are optional - only
      # provided fields will be updated. Note: SSN, name, date of birth, and sex cannot
      # be changed after creation.
      #
      # @overload update(employee_id, address: nil, email: nil, employee_class: nil, gender: nil, phone: nil, termination_date: nil, request_options: {})
      #
      # @param employee_id [String] Unique employee identifier (empl\_\*)
      #
      # @param address [VitableConnectAPI::Models::EmployeeUpdateParams::Address, nil] Employee's residential address
      #
      # @param email [String, nil] Email address
      #
      # @param employee_class [Symbol, VitableConnectAPI::Models::Employers::EmployeeClass, nil] - `Full Time` - Full Time
      #
      # @param gender [String, nil] Gender identity
      #
      # @param phone [String, nil] Phone number
      #
      # @param termination_date [Date, nil] Termination date if terminating
      #
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnectAPI::Models::Employee]
      #
      # @see VitableConnectAPI::Models::EmployeeUpdateParams
      def update(employee_id, params = {})
        parsed, options = VitableConnectAPI::EmployeeUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/employees/%1$s", employee_id],
          body: parsed,
          model: VitableConnectAPI::Employee,
          options: options
        )
      end

      # Terminates a specific employee. This sets the employee's active status to false
      # and records a termination date. The employee record is not permanently deleted
      # for compliance reasons.
      #
      # @overload terminate(employee_id, request_options: {})
      #
      # @param employee_id [String] Unique employee identifier (empl\_\*)
      #
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see VitableConnectAPI::Models::EmployeeTerminateParams
      def terminate(employee_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/employees/%1$s", employee_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [VitableConnectAPI::Client]
      def initialize(client:)
        @client = client
        @enrollments = VitableConnectAPI::Resources::Employees::Enrollments.new(client: client)
      end
    end
  end
end
