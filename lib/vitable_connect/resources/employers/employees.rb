# frozen_string_literal: true

module VitableConnect
  module Resources
    class Employers
      # Manage employee records for employers
      class Employees
        # Retrieves a paginated list of all employees for a specific employer. Results are
        # paginated using page and limit parameters.
        #
        # @overload list(employer_id, limit: nil, page: nil, request_options: {})
        #
        # @param employer_id [String] Unique employer identifier (empr\_\*)
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
