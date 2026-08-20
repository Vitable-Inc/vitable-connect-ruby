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

      # Updates an existing employer. All fields are optional — only provided fields are
      # updated. PO Box addresses are rejected.
      #
      # @overload update(employer_id, active: nil, address: nil, legal_name: nil, name: nil, request_options: {})
      #
      # @param employer_id [String] Unique employer identifier (empr\_\*)
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

      # Provision and return the employer's payroll integration email.
      #
      # @overload ensure_payroll_integration_email(employer_id, request_options: {})
      #
      # @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailResponse]
      #
      # @see VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailParams
      def ensure_payroll_integration_email(employer_id, params = {})
        @client.request(
          method: :put,
          path: ["v1/employers/%1$s/payroll-integration-email", employer_id],
          model: VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsParams} for more
      # details.
      #
      # Returns a paginated list of every member with an enrollment in one of an
      # employer's plan years, any election status: what they elected, where their
      # coverage stands, dependent count, carrier, plan, tier, and the plan's total
      # monthly cost. The caller must be authorized for the employer `empr_<...>`; an
      # unknown or unauthorized employer, or an unknown plan year `plyr_<...>`,
      # returns 404.
      #
      # @overload list_benefit_plan_year_enrollments(benefit_plan_year_id, employer_id:, election_status: nil, limit: nil, page: nil, search: nil, request_options: {})
      #
      # @param benefit_plan_year_id [String] Path param: Unique benefit-plan-year identifier (plyr\_\*).
      #
      # @param employer_id [String] Path param: Unique employer identifier (empr\_\*)
      #
      # @param election_status [Array<Symbol, VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsParams::ElectionStatus>] Query param: Filter by election status. Repeat the parameter to match several.
      #
      # @param limit [Integer] Query param: Items per page (default: 20, max: 100)
      #
      # @param page [Integer] Query param: Page number (default: 1)
      #
      # @param search [String] Query param: Case-insensitive search. Matches member name partially, and the `me
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Internal::PageNumberPage<VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse>]
      #
      # @see VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsParams
      def list_benefit_plan_year_enrollments(benefit_plan_year_id, params)
        parsed, options = VitableConnect::EmployerListBenefitPlanYearEnrollmentsParams.dump_request(params)
        query = VitableConnect::Internal::Util.encode_query_params(parsed)
        employer_id =
          parsed.delete(:employer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["v1/employers/%1$s/benefit-plan-years/%2$s/enrollments", employer_id, benefit_plan_year_id],
          query: query,
          page: VitableConnect::Internal::PageNumberPage,
          model: VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse,
          options: options
        )
      end

      # Returns the employer's benefit plan years (all years, or one when `year` is
      # given), each with its benefits, offered states, benefit families, and the
      # year-level enrollment roll-up. The caller must be authorized for the employer;
      # an unknown or unauthorized employer returns 404.
      #
      # @overload list_benefit_plan_years(employer_id, request_options: {})
      #
      # @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployerListBenefitPlanYearsResponse]
      #
      # @see VitableConnect::Models::EmployerListBenefitPlanYearsParams
      def list_benefit_plan_years(employer_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/employers/%1$s/benefit-plan-years", employer_id],
          model: VitableConnect::Models::EmployerListBenefitPlanYearsResponse,
          options: params[:request_options]
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

      # Returns the distinct HRIS/payroll providers across the same book
      # `GET /v1/employers` returns, sorted for display. Use these as the values for the
      # employers list's `hris_provider` filter — the providers are free text, so they
      # cannot be enumerated in advance.
      #
      # @overload list_hris_providers(request_options: {})
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployerListHRISProvidersResponse]
      #
      # @see VitableConnect::Models::EmployerListHRISProvidersParams
      def list_hris_providers(params = {})
        @client.request(
          method: :get,
          path: "v1/employers/hris-providers",
          model: VitableConnect::Models::EmployerListHRISProvidersResponse,
          options: params[:request_options]
        )
      end

      # Returns a cursor-paginated page of the employer's billing invoices, newest
      # first. Pass the `next_offset` from a previous page as `offset` to fetch the next
      # page. The caller must be authorized for the employer; an unknown or unauthorized
      # employer returns 404.
      #
      # @overload list_invoices(employer_id, limit: nil, offset: nil, request_options: {})
      #
      # @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      # @param limit [Integer] Maximum number of invoices per page
      #
      # @param offset [String, nil] Opaque cursor from a previous page's next_offset
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployerListInvoicesResponse]
      #
      # @see VitableConnect::Models::EmployerListInvoicesParams
      def list_invoices(employer_id, params = {})
        parsed, options = VitableConnect::EmployerListInvoicesParams.dump_request(params)
        query = VitableConnect::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["v1/employers/%1$s/invoices", employer_id],
          query: query,
          model: VitableConnect::Models::EmployerListInvoicesResponse,
          options: options
        )
      end

      # Returns a paginated list of the employer's payroll-deduction statements, newest
      # period first, each with its period, generation date, distinct employee count,
      # total deduction, change-file link, and deduction frequency. Statements
      # superseded by a later correction are excluded. The caller must be authorized for
      # the employer; an unknown or unauthorized employer returns 404.
      #
      # @overload list_payroll_deduction_statements(employer_id, limit: nil, page: nil, request_options: {})
      #
      # @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      # @param limit [Integer] Maximum number of statements per page
      #
      # @param page [Integer] Page number to retrieve (starts at 1)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Internal::PageNumberPage<VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse>]
      #
      # @see VitableConnect::Models::EmployerListPayrollDeductionStatementsParams
      def list_payroll_deduction_statements(employer_id, params = {})
        parsed, options = VitableConnect::EmployerListPayrollDeductionStatementsParams.dump_request(params)
        query = VitableConnect::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["v1/employers/%1$s/payroll-deduction-statements", employer_id],
          query: query,
          page: VitableConnect::Internal::PageNumberPage,
          model: VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse,
          options: options
        )
      end

      # Returns one benefit plan year in full — its benefit details plus the per-benefit
      # enrollment rate and SPD link — addressed by its `benefit_plan_year_id`. The
      # caller must be authorized for the employer; an unknown or unauthorized plan year
      # returns 404.
      #
      # @overload retrieve_benefit_plan_year(benefit_plan_year_id, employer_id:, request_options: {})
      #
      # @param benefit_plan_year_id [String] Unique benefit-plan-year identifier (plyr\_\*).
      #
      # @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse]
      #
      # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearParams
      def retrieve_benefit_plan_year(benefit_plan_year_id, params)
        parsed, options = VitableConnect::EmployerRetrieveBenefitPlanYearParams.dump_request(params)
        employer_id =
          parsed.delete(:employer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["v1/employers/%1$s/benefit-plan-years/%2$s", employer_id, benefit_plan_year_id],
          model: VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse,
          options: options
        )
      end

      # Returns the employer's HRIS connection — provider, status, last sync, and synced
      # row count — or null when the employer has no integration. The caller must be
      # authorized for the employer; an unknown or unauthorized employer returns 404.
      #
      # @overload retrieve_hris(employer_id, request_options: {})
      #
      # @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployerRetrieveHRISResponse]
      #
      # @see VitableConnect::Models::EmployerRetrieveHRISParams
      def retrieve_hris(employer_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/employers/%1$s/hris", employer_id],
          model: VitableConnect::Models::EmployerRetrieveHRISResponse,
          options: params[:request_options]
        )
      end

      # Returns the time-limited PDF download link for a single invoice belonging to the
      # employer's billing customer. `invoice_id` is the external Chargebee id (not a
      # prefixed UUID). The caller must be authorized for the employer; an unknown or
      # unauthorized employer or invoice returns 404.
      #
      # @overload retrieve_invoice_pdf(invoice_id, employer_id:, request_options: {})
      #
      # @param invoice_id [String] External Chargebee invoice id (not a prefixed UUID).
      #
      # @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployerRetrieveInvoicePdfResponse]
      #
      # @see VitableConnect::Models::EmployerRetrieveInvoicePdfParams
      def retrieve_invoice_pdf(invoice_id, params)
        parsed, options = VitableConnect::EmployerRetrieveInvoicePdfParams.dump_request(params)
        employer_id =
          parsed.delete(:employer_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["v1/employers/%1$s/invoices/%2$s/pdf", employer_id, invoice_id],
          model: VitableConnect::Models::EmployerRetrieveInvoicePdfResponse,
          options: options
        )
      end

      # Return whether the employer has submitted payroll access setup.
      #
      # @overload retrieve_payroll_access_setup(employer_id, request_options: {})
      #
      # @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployerRetrievePayrollAccessSetupResponse]
      #
      # @see VitableConnect::Models::EmployerRetrievePayrollAccessSetupParams
      def retrieve_payroll_access_setup(employer_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/employers/%1$s/payroll-access-setup", employer_id],
          model: VitableConnect::Models::EmployerRetrievePayrollAccessSetupResponse,
          options: params[:request_options]
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
      # {VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams} for more
      # details.
      #
      # Submit the employer's payroll access setup answers.
      #
      # @overload submit_payroll_access_setup(employer_id, access_method:, all_benefit_eligible_employees_present:, classifications_accurate:, employees_in_payroll_acknowledged:, has_additional_payroll_system:, is_controlled_group:, payroll_data_impacts_eligibility_acknowledged:, additional_access_method: nil, additional_integration_confirmed: nil, additional_login_url: nil, additional_password: nil, additional_phone: nil, additional_username: nil, classification_correction_source: nil, integration_confirmed: nil, login_url: nil, misclassified_employee_names: nil, missing_employee_resolution: nil, password: nil, phone: nil, remaining_employee_action: nil, same_payroll_covers_other_eins: nil, username: nil, request_options: {})
      #
      # @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      # @param access_method [Symbol, VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams::AccessMethod] - `SELF_SETUP` - SELF_SETUP
      #
      # @param all_benefit_eligible_employees_present [Boolean]
      #
      # @param classifications_accurate [Boolean]
      #
      # @param employees_in_payroll_acknowledged [Boolean]
      #
      # @param has_additional_payroll_system [Boolean]
      #
      # @param is_controlled_group [Boolean]
      #
      # @param payroll_data_impacts_eligibility_acknowledged [Boolean]
      #
      # @param additional_access_method [Symbol, VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams::AdditionalAccessMethod, nil] - `SELF_SETUP` - SELF_SETUP
      #
      # @param additional_integration_confirmed [Boolean, nil]
      #
      # @param additional_login_url [String, nil]
      #
      # @param additional_password [String, nil]
      #
      # @param additional_phone [String, nil]
      #
      # @param additional_username [String, nil]
      #
      # @param classification_correction_source [Symbol, VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams::ClassificationCorrectionSource, nil] - `ENTER_NAMES` - ENTER_NAMES
      #
      # @param integration_confirmed [Boolean, nil]
      #
      # @param login_url [String, nil]
      #
      # @param misclassified_employee_names [Array<String>]
      #
      # @param missing_employee_resolution [Symbol, VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams::MissingEmployeeResolution, nil] - `EMAIL_CENSUS` - EMAIL_CENSUS
      #
      # @param password [String, nil]
      #
      # @param phone [String, nil]
      #
      # @param remaining_employee_action [Symbol, VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams::RemainingEmployeeAction, nil] - `VITABLE_UPDATE` - VITABLE_UPDATE
      #
      # @param same_payroll_covers_other_eins [Boolean, nil]
      #
      # @param username [String, nil]
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EmployerSubmitPayrollAccessSetupResponse]
      #
      # @see VitableConnect::Models::EmployerSubmitPayrollAccessSetupParams
      def submit_payroll_access_setup(employer_id, params)
        parsed, options = VitableConnect::EmployerSubmitPayrollAccessSetupParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/employers/%1$s/payroll-access-setup", employer_id],
          body: parsed,
          model: VitableConnect::Models::EmployerSubmitPayrollAccessSetupResponse,
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
