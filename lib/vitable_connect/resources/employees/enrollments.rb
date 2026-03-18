# frozen_string_literal: true

module VitableConnect
  module Resources
    class Employees
      # Manage benefit enrollments and elections for employees
      class Enrollments
        # Retrieves a paginated list of benefit enrollments for an employee.
        #
        # @overload list(employee_id, limit: nil, page: nil, request_options: {})
        #
        # @param employee_id [String] Unique employee identifier (empl\_\*)
        #
        # @param limit [Integer] Items per page (default: 20, max: 100)
        #
        # @param page [Integer] Page number (default: 1)
        #
        # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitableConnect::Models::Employees::EnrollmentList]
        #
        # @see VitableConnect::Models::Employees::EnrollmentListParams
        def list(employee_id, params = {})
          parsed, options = VitableConnect::Employees::EnrollmentListParams.dump_request(params)
          query = VitableConnect::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["v1/employees/%1$s/enrollments", employee_id],
            query: query,
            model: VitableConnect::Employees::EnrollmentList,
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
