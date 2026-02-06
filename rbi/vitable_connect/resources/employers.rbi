# typed: strong

module VitableConnect
  module Resources
    class Employers
      sig { returns(VitableConnect::Resources::Employers::Employees) }
      attr_reader :employees

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
        # Filter by employer ID
        employer_id,
        request_options: {}
      )
      end

      # Updates an existing employer's information. All fields are optional - only
      # provided fields will be updated. Note: EIN cannot be changed after creation.
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
        # Filter by employer ID
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

      # Retrieves a paginated list of all employers that the authenticated organization
      # has access to. Use query parameters to filter by name or active status. Results
      # are paginated using page and limit parameters.
      sig do
        params(
          active_in: T::Boolean,
          limit: Integer,
          name: String,
          page: Integer,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::EmployerListResponse)
      end
      def list(
        # Filter by active status
        active_in: nil,
        # Items per page (default: 20, max: 100)
        limit: nil,
        # Filter by employer name (partial match)
        name: nil,
        # Page number (default: 1)
        page: nil,
        request_options: {}
      )
      end

      # Creates a new benefit eligibility policy for a specific employer. Eligibility
      # policies define rules that determine which employees qualify for benefits based
      # on criteria such as employment status (full-time, part-time), hours worked per
      # week, waiting periods after hire date, or other custom requirements. Optionally
      # provide 'policy_to_replace_id' as a query parameter to replace an existing
      # policy.
      sig do
        params(
          employer_id: String,
          effective_date: Date,
          name: String,
          rules:
            T::Array[
              VitableConnect::EmployerCreateEligibilityPolicyParams::Rule::OrHash
            ],
          policy_to_replace_id: String,
          description: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::BenefitEligibilityPolicy)
      end
      def create_eligibility_policy(
        # Path param: Filter by employer ID
        employer_id,
        # Body param: Date when policy becomes effective
        effective_date:,
        # Body param: Display name for the policy
        name:,
        # Body param: List of eligibility rules (at least one required)
        rules:,
        # Query param: ID of existing policy to replace (epol\_\*)
        policy_to_replace_id: nil,
        # Body param: Detailed description
        description: nil,
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
