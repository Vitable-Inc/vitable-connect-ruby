# frozen_string_literal: true

module VitableConnect
  module Resources
    # Manage employee records for employers
    class Employees
      # Manage benefit enrollments and elections for employees
      # @return [VitableConnect::Resources::Employees::Enrollments]
      attr_reader :enrollments

      # Retrieves detailed information for a specific employee by ID. Returns employee
      # details including personal information and employment status.
      #
      # @overload retrieve(employee_id, request_options: {})
      #
      # @param employee_id [String] Unique employee identifier (empl\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployeeResponse]
      #
      # @see VitableConnect::Models::EmployeeRetrieveParams
      def retrieve(employee_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/employees/%1$s", employee_id],
          model: VitableConnect::EmployeeResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [VitableConnect::Client]
      def initialize(client:)
        @client = client
        @enrollments = VitableConnect::Resources::Employees::Enrollments.new(client: client)
      end
    end
  end
end
