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
