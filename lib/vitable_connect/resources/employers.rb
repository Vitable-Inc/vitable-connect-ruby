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

      # Some parameter documentations has been truncated, see
      # {VitableConnect::Models::EmployerListParams} for more details.
      #
      # Returns the caller's employer book — every employer with its computed columns
      # (enrollment-rate summary, benefit-family tags, HRIS connection,
      # benefit-lifecycle stage) merged with the employer's flat CRM fields (legal name,
      # EIN, contact, address, timestamps). The book is derived from the authenticated
      # principal: one organization's employers, or every organization's for a caller
      # whose reach is not a single organization. Supports name search,
      # benefit-family/lifecycle/HRIS filters, and page/limit pagination.
      #
      # @overload list(benefit_family: nil, benefit_lifecycle_stage: nil, hris_provider: nil, hris_status: nil, include_cancelled: nil, limit: nil, page: nil, search: nil, request_options: {})
      #
      # @param benefit_family [Array<Symbol, VitableConnect::Models::EmployerListParams::BenefitFamily>] Filter to employers with at least one active benefit in these families.
      #
      # @param benefit_lifecycle_stage [Array<Symbol, VitableConnect::Models::EmployerListParams::BenefitLifecycleStage>] Filter to employers in one of these computed benefit-lifecycle stages.
      #
      # @param hris_provider [Array<String>] Filter to employers whose HRIS connection is with one of these payroll providers
      #
      # @param hris_status [Array<Symbol, VitableConnect::Models::EmployerListParams::HRISStatus>] Filter to employers whose HRIS connection is in one of these statuses.
      #
      # @param include_cancelled [Boolean] Include cancelled employers (hidden by default unless their stage is explicitly
      #
      # @param limit [Integer] Items per page.
      #
      # @param page [Integer] Page number.
      #
      # @param search [String, nil] Case-insensitive employer-name substring filter.
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Internal::PageNumberPage<VitableConnect::Models::EmployerListResponse>]
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
          model: VitableConnect::Models::EmployerListResponse,
          options: options
        )
      end

      # Retrieves a paginated list of employees for a specific employer. The caller must
      # be authorized for the employer; an unknown or unauthorized employer returns 404.
      # Results are paginated using page and limit parameters and can be narrowed with a
      # case-insensitive `search` (first name, last name, or email) and an
      # `employment_status` filter (active or terminated). Each employee includes
      # payroll deductions from the most recent statement period. When a new deduction
      # statement is generated, previous period deductions are replaced.
      #
      # @overload list_employees(employer_id, employment_status: nil, limit: nil, page: nil, search: nil, request_options: {})
      #
      # @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      # @param employment_status [Symbol, VitableConnect::Models::EmployerListEmployeesParams::EmploymentStatus] Filter by employment status (active or terminated)
      #
      # @param limit [Integer] Items per page (default: 20, max: 100)
      #
      # @param page [Integer] Page number (default: 1)
      #
      # @param search [String] Case-insensitive search across employee first name, last name, and email
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

      # Some parameter documentations has been truncated, see
      # {VitableConnect::Models::EmployerUpdateSettingsParams} for more details.
      #
      # Updates configuration settings for a specific employer. The employer must belong
      # to the authenticated organization.
      #
      # @overload update_settings(employer_id, pay_frequency:, request_options: {})
      #
      # @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      # @param pay_frequency [Symbol, VitableConnect::Models::EmployerUpdateSettingsParams::PayFrequency] - `weekly` - Weekly
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployerUpdateSettingsResponse]
      #
      # @see VitableConnect::Models::EmployerUpdateSettingsParams
      def update_settings(employer_id, params)
        parsed, options = VitableConnect::EmployerUpdateSettingsParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/employers/%1$s/settings", employer_id],
          body: parsed,
          model: VitableConnect::Models::EmployerUpdateSettingsResponse,
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
