# typed: strong

module VitableConnectAPI
  module Resources
    class Employers
      sig { returns(VitableConnectAPI::Resources::Employers::Employees) }
      attr_reader :employees

      # Creates a new employer for the authenticated organization. Requires employer
      # name, legal name, EIN, email, and address information. Returns the created
      # employer with its assigned ID.
      sig do
        params(
          address: VitableConnectAPI::EmployerCreateParams::Address::OrHash,
          ein: String,
          email: String,
          legal_name: String,
          name: String,
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(VitableConnectAPI::Models::EmployerCreateResponse)
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
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(VitableConnectAPI::Models::EmployerRetrieveResponse)
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
            T.nilable(VitableConnectAPI::EmployerUpdateParams::Address::OrHash),
          legal_name: T.nilable(String),
          name: T.nilable(String),
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(VitableConnectAPI::Models::EmployerUpdateResponse)
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
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(VitableConnectAPI::Models::EmployerListResponse)
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

      # @api private
      sig do
        params(client: VitableConnectAPI::Client).returns(T.attached_class)
      end
      def self.new(client:)
      end
    end
  end
end
