# frozen_string_literal: true

module VitableConnect
  module Resources
    class Employers
      # Creates a new employer for the authenticated organization. Requires employer
      # name, legal name, EIN, email, and address information. Returns the created
      # employer with its assigned ID.
      #
      # @overload create(address:, ein:, email:, legal_name:, name:, phone_number: nil, reference_id: nil, request_options: {})
      #
      # @param address [VitableConnect::Models::EmployerCreateParams::Address] Employer address
      #
      # @param ein [String] Employer Identification Number (format: XX-XXXXXXX)
      #
      # @param email [String] Email address for billing and communications
      #
      # @param legal_name [String] Legal business name
      #
      # @param name [String] Employer display name
      #
      # @param phone_number [String, nil] Employer phone number (10-digit US format, e.g. 5551234567)
      #
      # @param reference_id [String, nil] External reference ID for this employer
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployerResponse]
      #
      # @see VitableConnect::Models::EmployerCreateParams
      def create(params)
        parsed, options = VitableConnect::EmployerCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/employers",
          body: parsed,
          model: VitableConnect::EmployerResponse,
          options: options
        )
      end

      # Retrieves detailed information for a specific employer by ID. The employer must
      # belong to the authenticated organization.
      #
      # @overload retrieve(employer_id, request_options: {})
      #
      # @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployerResponse]
      #
      # @see VitableConnect::Models::EmployerRetrieveParams
      def retrieve(employer_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/employers/%1$s", employer_id],
          model: VitableConnect::EmployerResponse,
          options: params[:request_options]
        )
      end

      # Retrieves a paginated list of all employers belonging to the authenticated
      # organization. Results are sorted by creation date (newest first) and paginated
      # using page and limit parameters.
      #
      # @overload list(limit: nil, page: nil, request_options: {})
      #
      # @param limit [Integer] Items per page (default: 20, max: 100)
      #
      # @param page [Integer] Page number (default: 1)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Internal::PageNumberPage<VitableConnect::Models::Employer>]
      #
      # @see VitableConnect::Models::EmployerListParams
      def list(params = {})
        parsed, options = VitableConnect::EmployerListParams.dump_request(params)
        query = VitableConnect::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/employers",
          query: query,
          page: VitableConnect::Internal::PageNumberPage,
          model: VitableConnect::Employer,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {VitableConnect::Models::EmployerCreateBenefitEligibilityPolicyParams} for more
      # details.
      #
      # Creates a benefit eligibility policy for the specified employer.
      #
      # @overload create_benefit_eligibility_policy(employer_id, classification:, waiting_period:, request_options: {})
      #
      # @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      # @param classification [String] Which employee classifications are eligible. One of: full_time, part_time, all
      #
      # @param waiting_period [String] Waiting period before eligibility. One of: first_of_following_month, 30_days, 60
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::BenefitEligibilityPolicyResponse]
      #
      # @see VitableConnect::Models::EmployerCreateBenefitEligibilityPolicyParams
      def create_benefit_eligibility_policy(employer_id, params)
        parsed, options = VitableConnect::EmployerCreateBenefitEligibilityPolicyParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/employers/%1$s/benefit-eligibility-policies", employer_id],
          body: parsed,
          model: VitableConnect::BenefitEligibilityPolicyResponse,
          options: options
        )
      end

      # Retrieves a paginated list of all employees for a specific employer. Results are
      # paginated using page and limit parameters. Each employee includes payroll
      # deductions from the most recent statement period. When a new deduction statement
      # is generated, previous period deductions are replaced.
      #
      # @overload list_employees(employer_id, limit: nil, page: nil, request_options: {})
      #
      # @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      # @param limit [Integer] Items per page (default: 20, max: 100)
      #
      # @param page [Integer] Page number (default: 1)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Internal::PageNumberPage<VitableConnect::Models::Employee>]
      #
      # @see VitableConnect::Models::EmployerListEmployeesParams
      def list_employees(employer_id, params = {})
        parsed, options = VitableConnect::EmployerListEmployeesParams.dump_request(params)
        query = VitableConnect::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["v1/employers/%1$s/employees", employer_id],
          query: query,
          page: VitableConnect::Internal::PageNumberPage,
          model: VitableConnect::Employee,
          options: options
        )
      end

      # Submits a census sync payload for the specified employer. The employees in the
      # payload will be queued for processing. Returns an accepted response with the
      # timestamp of acceptance.
      #
      # @overload submit_census_sync(employer_id, employees:, request_options: {})
      #
      # @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      # @param employees [Array<VitableConnect::Models::EmployerSubmitCensusSyncParams::Employee>]
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployerSubmitCensusSyncResponse]
      #
      # @see VitableConnect::Models::EmployerSubmitCensusSyncParams
      def submit_census_sync(employer_id, params)
        parsed, options = VitableConnect::EmployerSubmitCensusSyncParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/employers/%1$s/census-sync", employer_id],
          body: parsed,
          model: VitableConnect::Models::EmployerSubmitCensusSyncResponse,
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
