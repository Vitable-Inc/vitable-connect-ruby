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

      # Retrieves a paginated list of all employers belonging to the authenticated
      # organization. Results are sorted by creation date (newest first) and paginated
      # using page and limit parameters.
      sig do
        params(
          limit: Integer,
          page: Integer,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(
          VitableConnect::Internal::PageNumberPage[VitableConnect::Employer]
        )
      end
      def list(
        # Items per page (default: 20, max: 100)
        limit: nil,
        # Page number (default: 1)
        page: nil,
        request_options: {}
      )
      end

      # Creates a benefit eligibility policy for the specified employer.
      sig do
        params(
          employer_id: String,
          classification: String,
          waiting_period: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::BenefitEligibilityPolicyResponse)
      end
      def create_benefit_eligibility_policy(
        # Unique employer identifier (empr\_\*)
        employer_id,
        # Which employee classifications are eligible. One of: full_time, part_time, all
        classification:,
        # Waiting period before eligibility. One of: first_of_following_month, 30_days,
        # 60_days, none
        waiting_period:,
        request_options: {}
      )
      end

      # Retrieves a paginated list of all employees for a specific employer. Results are
      # paginated using page and limit parameters. Each employee includes payroll
      # deductions from the most recent statement period. When a new deduction statement
      # is generated, previous period deductions are replaced.
      sig do
        params(
          employer_id: String,
          limit: Integer,
          page: Integer,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(
          VitableConnect::Internal::PageNumberPage[VitableConnect::Employee]
        )
      end
      def list_employees(
        # Unique employer identifier (empr\_\*)
        employer_id,
        # Items per page (default: 20, max: 100)
        limit: nil,
        # Page number (default: 1)
        page: nil,
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
        # - `weekly` - weekly
        # - `bi_weekly` - bi_weekly
        # - `semi_monthly` - semi_monthly
        # - `monthly` - monthly
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
