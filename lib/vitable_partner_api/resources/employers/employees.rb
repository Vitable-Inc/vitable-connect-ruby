# frozen_string_literal: true

module VitablePartnerAPI
  module Resources
    class Employers
      class Employees
        # Creates a new Employee for an Employer. Only the create Employee endpoint allows
        # specifying the SSN.
        #
        # @overload create(id, date_of_birth:, first_name:, last_name:, start_date:, gender: nil, sex: nil, ssn: nil, suffix: nil, request_options: {})
        #
        # @param id [String] Employer ID (prefixed with empr\_)
        #
        # @param date_of_birth [Date]
        #
        # @param first_name [String]
        #
        # @param last_name [String]
        #
        # @param start_date [Date]
        #
        # @param gender [Symbol, VitablePartnerAPI::Models::Employers::CreateEmployeeRequest::Gender]
        #
        # @param sex [Symbol, VitablePartnerAPI::Models::Employers::CreateEmployeeRequest::Sex]
        #
        # @param ssn [String] Social Security Number (only allowed on create)
        #
        # @param suffix [String]
        #
        # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitablePartnerAPI::Models::Employee]
        #
        # @see VitablePartnerAPI::Models::Employers::EmployeeCreateParams
        def create(id, params)
          parsed, options = VitablePartnerAPI::Employers::EmployeeCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["employers/%1$s/employees", id],
            body: parsed,
            model: VitablePartnerAPI::Employee,
            options: options
          )
        end

        # Lists all Employees for an Employer.
        #
        # @overload list(id, limit: nil, offset: nil, request_options: {})
        #
        # @param id [String] Employer ID (prefixed with empr\_)
        #
        # @param limit [Integer] Number of results to return
        #
        # @param offset [Integer] Number of results to skip
        #
        # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitablePartnerAPI::Models::Employers::EmployeeListResponse]
        #
        # @see VitablePartnerAPI::Models::Employers::EmployeeListParams
        def list(id, params = {})
          parsed, options = VitablePartnerAPI::Employers::EmployeeListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["employers/%1$s/employees", id],
            query: parsed,
            model: VitablePartnerAPI::Models::Employers::EmployeeListResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [VitablePartnerAPI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
