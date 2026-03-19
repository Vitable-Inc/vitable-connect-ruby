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
        ).returns(VitableConnect::Models::EmployerListResponse)
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
        ).returns(VitableConnect::BenefitEligibilityPolicy)
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
      # paginated using page and limit parameters.
      sig do
        params(
          employer_id: String,
          limit: Integer,
          page: Integer,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::EmployerListEmployeesResponse)
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

      # @api private
      sig { params(client: VitableConnect::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
