# frozen_string_literal: true

module VitableConnect
  module Resources
    class Employers
      # Manage employee records for employers
      # @return [VitableConnect::Resources::Employers::Employees]
      attr_reader :employees

      # Creates a new employer for the authenticated organization. Requires employer
      # name, legal name, EIN, email, and address information. Returns the created
      # employer with its assigned ID.
      #
      # @overload create(address:, ein:, email:, legal_name:, name:, request_options: {})
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
      # @param employer_id [String] Filter by employer ID
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

      # Updates an existing employer's information. All fields are optional - only
      # provided fields will be updated. Note: EIN cannot be changed after creation.
      #
      # @overload update(employer_id, active: nil, address: nil, legal_name: nil, name: nil, request_options: {})
      #
      # @param employer_id [String] Filter by employer ID
      #
      # @param active [Boolean, nil] Whether the employer is active
      #
      # @param address [VitableConnect::Models::EmployerUpdateParams::Address, nil] Employer address
      #
      # @param legal_name [String, nil] Legal business name
      #
      # @param name [String, nil] Employer display name
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployerResponse]
      #
      # @see VitableConnect::Models::EmployerUpdateParams
      def update(employer_id, params = {})
        parsed, options = VitableConnect::EmployerUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/employers/%1$s", employer_id],
          body: parsed,
          model: VitableConnect::EmployerResponse,
          options: options
        )
      end

      # Retrieves a paginated list of all employers that the authenticated organization
      # has access to. Use query parameters to filter by name or active status. Results
      # are paginated using page and limit parameters.
      #
      # @overload list(active_in: nil, limit: nil, name: nil, page: nil, request_options: {})
      #
      # @param active_in [Boolean] Filter by active status
      #
      # @param limit [Integer] Items per page (default: 20, max: 100)
      #
      # @param name [String] Filter by employer name (partial match)
      #
      # @param page [Integer] Page number (default: 1)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployerListResponse]
      #
      # @see VitableConnect::Models::EmployerListParams
      def list(params = {})
        parsed, options = VitableConnect::EmployerListParams.dump_request(params)
        query = VitableConnect::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/employers",
          query: query,
          model: VitableConnect::Models::EmployerListResponse,
          options: options
        )
      end

      # Creates a new benefit eligibility policy for a specific employer. Eligibility
      # policies define rules that determine which employees qualify for benefits based
      # on criteria such as employment status (full-time, part-time), hours worked per
      # week, waiting periods after hire date, or other custom requirements. Optionally
      # provide 'policy_to_replace_id' as a query parameter to replace an existing
      # policy.
      #
      # @overload create_eligibility_policy(employer_id, effective_date:, name:, rules:, policy_to_replace_id: nil, description: nil, request_options: {})
      #
      # @param employer_id [String] Path param: Filter by employer ID
      #
      # @param effective_date [Date] Body param: Date when policy becomes effective
      #
      # @param name [String] Body param: Display name for the policy
      #
      # @param rules [Array<VitableConnect::Models::EmployerCreateEligibilityPolicyParams::Rule>] Body param: List of eligibility rules (at least one required)
      #
      # @param policy_to_replace_id [String] Query param: ID of existing policy to replace (epol\_\*)
      #
      # @param description [String, nil] Body param: Detailed description
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::BenefitEligibilityPolicy]
      #
      # @see VitableConnect::Models::EmployerCreateEligibilityPolicyParams
      def create_eligibility_policy(employer_id, params)
        query_params = [:policy_to_replace_id]
        parsed, options = VitableConnect::EmployerCreateEligibilityPolicyParams.dump_request(params)
        query = VitableConnect::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :post,
          path: ["v1/employers/%1$s/benefit-eligibility-policies", employer_id],
          query: query,
          body: parsed.except(*query_params),
          model: VitableConnect::BenefitEligibilityPolicy,
          options: options
        )
      end

      # @api private
      #
      # @param client [VitableConnect::Client]
      def initialize(client:)
        @client = client
        @employees = VitableConnect::Resources::Employers::Employees.new(client: client)
      end
    end
  end
end
