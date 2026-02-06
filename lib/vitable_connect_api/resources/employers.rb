# frozen_string_literal: true

module VitableConnectAPI
  module Resources
    class Employers
      # @return [VitableConnectAPI::Resources::Employers::Employees]
      attr_reader :employees

      # Creates a new employer for the authenticated organization. Requires employer
      # name, legal name, EIN, email, and address information. Returns the created
      # employer with its assigned ID.
      #
      # @overload create(address:, ein:, email:, legal_name:, name:, request_options: {})
      #
      # @param address [VitableConnectAPI::Models::EmployerCreateParams::Address] Employer address
      #
      # @param ein [String] Employer Identification Number (format: XX-XXXXXXX)
      #
      # @param email [String] Email address for billing and communications
      #
      # @param legal_name [String] Legal business name
      #
      # @param name [String] Employer display name
      #
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnectAPI::Models::EmployerCreateResponse]
      #
      # @see VitableConnectAPI::Models::EmployerCreateParams
      def create(params)
        parsed, options = VitableConnectAPI::EmployerCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/employers",
          body: parsed,
          model: VitableConnectAPI::Models::EmployerCreateResponse,
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
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnectAPI::Models::EmployerRetrieveResponse]
      #
      # @see VitableConnectAPI::Models::EmployerRetrieveParams
      def retrieve(employer_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/employers/%1$s", employer_id],
          model: VitableConnectAPI::Models::EmployerRetrieveResponse,
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
      # @param address [VitableConnectAPI::Models::EmployerUpdateParams::Address, nil] Employer address
      #
      # @param legal_name [String, nil] Legal business name
      #
      # @param name [String, nil] Employer display name
      #
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnectAPI::Models::EmployerUpdateResponse]
      #
      # @see VitableConnectAPI::Models::EmployerUpdateParams
      def update(employer_id, params = {})
        parsed, options = VitableConnectAPI::EmployerUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/employers/%1$s", employer_id],
          body: parsed,
          model: VitableConnectAPI::Models::EmployerUpdateResponse,
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
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnectAPI::Models::EmployerListResponse]
      #
      # @see VitableConnectAPI::Models::EmployerListParams
      def list(params = {})
        parsed, options = VitableConnectAPI::EmployerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/employers",
          query: parsed,
          model: VitableConnectAPI::Models::EmployerListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [VitableConnectAPI::Client]
      def initialize(client:)
        @client = client
        @employees = VitableConnectAPI::Resources::Employers::Employees.new(client: client)
      end
    end
  end
end
