# typed: strong

module VitableConnect
  module Resources
    class Employers
      # Manage employee records for employers
      class Employees
        # Retrieves a paginated list of all employees for a specific employer. Results are
        # paginated using page and limit parameters.
        sig do
          params(
            employer_id: String,
            limit: Integer,
            page: Integer,
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(VitableConnect::Models::Employers::EmployeeListResponse)
        end
        def list(
          # Unique employer identifier (empr\_\*)
          employer_id,
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
end
