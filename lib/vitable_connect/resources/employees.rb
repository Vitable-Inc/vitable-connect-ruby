# frozen_string_literal: true

module VitableConnect
  module Resources
    class Employees
      # Retrieves detailed information for a specific employee by ID. Returns employee
      # details including personal information and employment status.
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
