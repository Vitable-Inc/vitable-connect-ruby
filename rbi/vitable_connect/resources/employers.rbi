# typed: strong

module VitableConnect
  module Resources
    class Employers
      # Creates a new employer for the authenticated organization. Requires employer
      # name, legal name, EIN, email, and address information. Returns the created
      # employer with its assigned ID.
      sig do
        params(
          address: VitableConnect::EmployerCreateParams::Address::OrHash,
          ein: String,
          email: String,
          legal_name: String,
          name: String,
          phone_number: T.nilable(String),
          reference_id: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::EmployerResponse)
      end
      def create(
        # Employer address
        address:,
        # Employer Identification Number (format: XX-XXXXXXX)
        ein:,
        # Email address for billing and communications
        email:,
        # Legal business name
        legal_name:,
        # Employer display name
        name:,
        # Employer phone number (10-digit US format, e.g. 5551234567)
        phone_number: nil,
        # External reference ID for this employer
        reference_id: nil,
        request_options: {}
      )
      end

      # Retrieves detailed information for a specific employer by ID. The employer must
      # belong to the authenticated organization.
      sig do
        params(
          employer_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::EmployerResponse)
      end
      def retrieve(
        # Unique employer identifier (empr\_\*)
        employer_id,
        request_options: {}
      )
      end

      # Updates an existing employer. All fields are optional — only provided fields are
      # updated. PO Box addresses are rejected.
      sig do
        params(
          employer_id: String,
          active: T.nilable(T::Boolean),
          address:
            T.nilable(VitableConnect::EmployerUpdateParams::Address::OrHash),
          legal_name: T.nilable(String),
          name: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::EmployerResponse)
      end
      def update(
        # Unique employer identifier (empr\_\*)
        employer_id,
        # Whether the employer is active
        active: nil,
        # Employer address
        address: nil,
        # Legal business name
        legal_name: nil,
        # Employer display name
        name: nil,
        request_options: {}
      )
      end

      # Returns the caller's employer book — every employer with its computed columns
      # (enrollment-rate summary, benefit-family tags, HRIS connection,
      # benefit-lifecycle stage) merged with the employer's flat CRM fields (legal name,
      # EIN, contact, address, timestamps). The book is derived from the authenticated
      # principal: one organization's employers, or every organization's for a caller
      # whose reach is not a single organization. Supports name search,
      # benefit-family/lifecycle/HRIS filters, and page/limit pagination.
      sig do
        params(
          benefit_family:
            T::Array[
              VitableConnect::EmployerListParams::BenefitFamily::OrSymbol
            ],
          benefit_lifecycle_stage:
            T::Array[
              VitableConnect::EmployerListParams::BenefitLifecycleStage::OrSymbol
            ],
          hris_provider: T::Array[String],
          hris_status:
            T::Array[VitableConnect::EmployerListParams::HRISStatus::OrSymbol],
          include_cancelled: T::Boolean,
          limit: Integer,
          page: Integer,
          search: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(
          VitableConnect::Internal::PageNumberPage[
            VitableConnect::Models::EmployerListResponse
          ]
        )
      end
      def list(
        # Filter to employers with at least one active benefit in these families.
        benefit_family: nil,
        # Filter to employers in one of these computed benefit-lifecycle stages.
        benefit_lifecycle_stage: nil,
        # Filter to employers whose HRIS connection is with one of these payroll providers
        # (e.g. `ADP RUN`). Matched case-insensitively; free text, so read the available
        # values from the HRIS-providers endpoint rather than assuming a fixed set.
        hris_provider: nil,
        # Filter to employers whose HRIS connection is in one of these statuses.
        hris_status: nil,
        # Include cancelled employers (hidden by default unless their stage is explicitly
        # requested).
        include_cancelled: nil,
        # Items per page.
        limit: nil,
        # Page number.
        page: nil,
        # Case-insensitive employer-name substring filter.
        search: nil,
        request_options: {}
      )
      end

      # Provision and return the employer's payroll integration email.
      sig do
        params(
          employer_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(
          VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailResponse
        )
      end
      def ensure_payroll_integration_email(
        # Unique employer identifier (empr\_\*)
        employer_id,
        request_options: {}
      )
      end

      # Returns a paginated list of every member with an enrollment in one of an
      # employer's plan years, any election status: what they elected, where their
      # coverage stands, dependent count, carrier, plan, tier, and the plan's total
      # monthly cost. The caller must be authorized for the employer `empr_<...>`; an
      # unknown or unauthorized employer, or an unknown plan year `plyr_<...>`,
      # returns 404.
      sig do
        params(
          benefit_plan_year_id: String,
          employer_id: String,
          election_status:
            T::Array[
              VitableConnect::EmployerListBenefitPlanYearEnrollmentsParams::ElectionStatus::OrSymbol
            ],
          limit: Integer,
          page: Integer,
          search: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(
          VitableConnect::Internal::PageNumberPage[
            VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse
          ]
        )
      end
      def list_benefit_plan_year_enrollments(
        # Path param: Unique benefit-plan-year identifier (plyr\_\*).
        benefit_plan_year_id,
        # Path param: Unique employer identifier (empr\_\*)
        employer_id:,
        # Query param: Filter by election status. Repeat the parameter to match several.
        election_status: nil,
        # Query param: Items per page (default: 20, max: 100)
        limit: nil,
        # Query param: Page number (default: 1)
        page: nil,
        # Query param: Case-insensitive search. Matches member name partially, and the
        # `member_id` exactly — either your own reference id or the prefixed
        # `grpmbr_<...>` id.
        search: nil,
        request_options: {}
      )
      end

      # Returns the employer's benefit plan years (all years, or one when `year` is
      # given), each with its benefits, offered states, benefit families, and the
      # year-level enrollment roll-up. The caller must be authorized for the employer;
      # an unknown or unauthorized employer returns 404.
      sig do
        params(
          employer_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::EmployerListBenefitPlanYearsResponse)
      end
      def list_benefit_plan_years(
        # Unique employer identifier (empr\_\*)
        employer_id,
        request_options: {}
      )
      end

      # Retrieves a paginated list of employees for a specific employer. The caller must
      # be authorized for the employer; an unknown or unauthorized employer returns 404.
      # Results are paginated using page and limit parameters and can be narrowed with a
      # case-insensitive `search` (first name, last name, or email) and an
      # `employment_status` filter (active or terminated). Each employee includes
      # payroll deductions from the most recent statement period. When a new deduction
      # statement is generated, previous period deductions are replaced.
      sig do
        params(
          employer_id: String,
          employment_status:
            VitableConnect::EmployerListEmployeesParams::EmploymentStatus::OrSymbol,
          limit: Integer,
          page: Integer,
          search: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(
          VitableConnect::Internal::PageNumberPage[VitableConnect::Employee]
        )
      end
      def list_employees(
        # Unique employer identifier (empr\_\*)
        employer_id,
        # Filter by employment status (active or terminated)
        employment_status: nil,
        # Items per page (default: 20, max: 100)
        limit: nil,
        # Page number (default: 1)
        page: nil,
        # Case-insensitive search across employee first name, last name, and email
        search: nil,
        request_options: {}
      )
      end

      # Returns the distinct HRIS/payroll providers across the same book
      # `GET /v1/employers` returns, sorted for display. Use these as the values for the
      # employers list's `hris_provider` filter — the providers are free text, so they
      # cannot be enumerated in advance.
      sig do
        params(request_options: VitableConnect::RequestOptions::OrHash).returns(
          VitableConnect::Models::EmployerListHRISProvidersResponse
        )
      end
      def list_hris_providers(request_options: {})
      end

      # Returns a cursor-paginated page of the employer's billing invoices, newest
      # first. Pass the `next_offset` from a previous page as `offset` to fetch the next
      # page. The caller must be authorized for the employer; an unknown or unauthorized
      # employer returns 404.
      sig do
        params(
          employer_id: String,
          limit: Integer,
          offset: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::EmployerListInvoicesResponse)
      end
      def list_invoices(
        # Unique employer identifier (empr\_\*)
        employer_id,
        # Maximum number of invoices per page
        limit: nil,
        # Opaque cursor from a previous page's next_offset
        offset: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of the employer's payroll-deduction statements, newest
      # period first, each with its period, generation date, distinct employee count,
      # total deduction, change-file link, and deduction frequency. Statements
      # superseded by a later correction are excluded. The caller must be authorized for
      # the employer; an unknown or unauthorized employer returns 404.
      sig do
        params(
          employer_id: String,
          limit: Integer,
          page: Integer,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(
          VitableConnect::Internal::PageNumberPage[
            VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse
          ]
        )
      end
      def list_payroll_deduction_statements(
        # Unique employer identifier (empr\_\*)
        employer_id,
        # Maximum number of statements per page
        limit: nil,
        # Page number to retrieve (starts at 1)
        page: nil,
        request_options: {}
      )
      end

      # Returns one benefit plan year in full — its benefit details plus the per-benefit
      # enrollment rate and SPD link — addressed by its `benefit_plan_year_id`. The
      # caller must be authorized for the employer; an unknown or unauthorized plan year
      # returns 404.
      sig do
        params(
          benefit_plan_year_id: String,
          employer_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(
          VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse
        )
      end
      def retrieve_benefit_plan_year(
        # Unique benefit-plan-year identifier (plyr\_\*).
        benefit_plan_year_id,
        # Unique employer identifier (empr\_\*)
        employer_id:,
        request_options: {}
      )
      end

      # Returns the employer's HRIS connection — provider, status, last sync, and synced
      # row count — or null when the employer has no integration. The caller must be
      # authorized for the employer; an unknown or unauthorized employer returns 404.
      sig do
        params(
          employer_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::EmployerRetrieveHRISResponse)
      end
      def retrieve_hris(
        # Unique employer identifier (empr\_\*)
        employer_id,
        request_options: {}
      )
      end

      # Returns the time-limited PDF download link for a single invoice belonging to the
      # employer's billing customer. `invoice_id` is the external Chargebee id (not a
      # prefixed UUID). The caller must be authorized for the employer; an unknown or
      # unauthorized employer or invoice returns 404.
      sig do
        params(
          invoice_id: String,
          employer_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::EmployerRetrieveInvoicePdfResponse)
      end
      def retrieve_invoice_pdf(
        # External Chargebee invoice id (not a prefixed UUID).
        invoice_id,
        # Unique employer identifier (empr\_\*)
        employer_id:,
        request_options: {}
      )
      end

      # Return whether the employer has submitted payroll access setup.
      sig do
        params(
          employer_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(
          VitableConnect::Models::EmployerRetrievePayrollAccessSetupResponse
        )
      end
      def retrieve_payroll_access_setup(
        # Unique employer identifier (empr\_\*)
        employer_id,
        request_options: {}
      )
      end

      # Submits a census sync payload for the specified employer. The employees in the
      # payload will be queued for processing. Returns an accepted response with the
      # timestamp of acceptance.
      sig do
        params(
          employer_id: String,
          employees:
            T::Array[
              VitableConnect::EmployerSubmitCensusSyncParams::Employee::OrHash
            ],
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::EmployerSubmitCensusSyncResponse)
      end
      def submit_census_sync(
        # Unique employer identifier (empr\_\*)
        employer_id,
        employees:,
        request_options: {}
      )
      end

      # Submit the employer's payroll access setup answers.
      sig do
        params(
          employer_id: String,
          access_method:
            VitableConnect::EmployerSubmitPayrollAccessSetupParams::AccessMethod::OrSymbol,
          all_benefit_eligible_employees_present: T::Boolean,
          classifications_accurate: T::Boolean,
          employees_in_payroll_acknowledged: T::Boolean,
          has_additional_payroll_system: T::Boolean,
          is_controlled_group: T::Boolean,
          payroll_data_impacts_eligibility_acknowledged: T::Boolean,
          additional_access_method:
            T.nilable(
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::AdditionalAccessMethod::OrSymbol
            ),
          additional_integration_confirmed: T.nilable(T::Boolean),
          additional_login_url: T.nilable(String),
          additional_password: T.nilable(String),
          additional_phone: T.nilable(String),
          additional_username: T.nilable(String),
          classification_correction_source:
            T.nilable(
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::ClassificationCorrectionSource::OrSymbol
            ),
          integration_confirmed: T.nilable(T::Boolean),
          login_url: T.nilable(String),
          misclassified_employee_names: T::Array[String],
          missing_employee_resolution:
            T.nilable(
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::MissingEmployeeResolution::OrSymbol
            ),
          password: T.nilable(String),
          phone: T.nilable(String),
          remaining_employee_action:
            T.nilable(
              VitableConnect::EmployerSubmitPayrollAccessSetupParams::RemainingEmployeeAction::OrSymbol
            ),
          same_payroll_covers_other_eins: T.nilable(T::Boolean),
          username: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(
          VitableConnect::Models::EmployerSubmitPayrollAccessSetupResponse
        )
      end
      def submit_payroll_access_setup(
        # Unique employer identifier (empr\_\*)
        employer_id,
        # - `SELF_SETUP` - SELF_SETUP
        # - `NEEDS_HELP` - NEEDS_HELP
        access_method:,
        all_benefit_eligible_employees_present:,
        classifications_accurate:,
        employees_in_payroll_acknowledged:,
        has_additional_payroll_system:,
        is_controlled_group:,
        payroll_data_impacts_eligibility_acknowledged:,
        # - `SELF_SETUP` - SELF_SETUP
        # - `NEEDS_HELP` - NEEDS_HELP
        additional_access_method: nil,
        additional_integration_confirmed: nil,
        additional_login_url: nil,
        additional_password: nil,
        additional_phone: nil,
        additional_username: nil,
        # - `ENTER_NAMES` - ENTER_NAMES
        # - `EMAIL_LIST` - EMAIL_LIST
        classification_correction_source: nil,
        integration_confirmed: nil,
        login_url: nil,
        misclassified_employee_names: nil,
        # - `EMAIL_CENSUS` - EMAIL_CENSUS
        # - `SECOND_SYSTEM_ACCESS` - SECOND_SYSTEM_ACCESS
        missing_employee_resolution: nil,
        password: nil,
        phone: nil,
        # - `VITABLE_UPDATE` - VITABLE_UPDATE
        # - `EMPLOYER_UPDATE` - EMPLOYER_UPDATE
        remaining_employee_action: nil,
        same_payroll_covers_other_eins: nil,
        username: nil,
        request_options: {}
      )
      end

      # Updates configuration settings for a specific employer. The employer must belong
      # to the authenticated organization.
      sig do
        params(
          employer_id: String,
          pay_frequency:
            VitableConnect::EmployerUpdateSettingsParams::PayFrequency::OrSymbol,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::EmployerUpdateSettingsResponse)
      end
      def update_settings(
        # Unique employer identifier (empr\_\*)
        employer_id,
        # - `weekly` - Weekly
        # - `bi_weekly` - Bi Weekly
        # - `semi_monthly` - Semi Monthly
        # - `monthly` - Monthly
        pay_frequency:,
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
