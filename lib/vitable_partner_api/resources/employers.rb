# frozen_string_literal: true

module VitablePartnerAPI
  module Resources
    class Employers
      # @return [VitablePartnerAPI::Resources::Employers::Employees]
      attr_reader :employees

      # Creates a new Employer for an Organization.
      #
      # @overload create(legal_name:, name:, active: nil, request_options: {})
      #
      # @param legal_name [String]
      # @param name [String]
      # @param active [Boolean]
      # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitablePartnerAPI::Models::Employer]
      #
      # @see VitablePartnerAPI::Models::EmployerCreateParams
      def create(params)
        parsed, options = VitablePartnerAPI::EmployerCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "employers",
          body: parsed,
          model: VitablePartnerAPI::Employer,
          options: options
        )
      end

      # Gets a specific Employer an Organization has access to.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Employer ID (prefixed with empr\_)
      #
      # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitablePartnerAPI::Models::Employer]
      #
      # @see VitablePartnerAPI::Models::EmployerRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["employers/%1$s", id],
          model: VitablePartnerAPI::Employer,
          options: params[:request_options]
        )
      end

      # Updates a specific Employer an Organization has access to.
      #
      # @overload update(id, active: nil, legal_name: nil, name: nil, request_options: {})
      #
      # @param id [String] Employer ID (prefixed with empr\_)
      #
      # @param active [Boolean]
      #
      # @param legal_name [String]
      #
      # @param name [String]
      #
      # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitablePartnerAPI::Models::Employer]
      #
      # @see VitablePartnerAPI::Models::EmployerUpdateParams
      def update(id, params = {})
        parsed, options = VitablePartnerAPI::EmployerUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["employers/%1$s", id],
          body: parsed,
          model: VitablePartnerAPI::Employer,
          options: options
        )
      end

      # Lists all Employers an Organization has access to.
      #
      # @overload list(limit: nil, offset: nil, request_options: {})
      #
      # @param limit [Integer] Number of results to return
      #
      # @param offset [Integer] Number of results to skip
      #
      # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitablePartnerAPI::Models::EmployerListResponse]
      #
      # @see VitablePartnerAPI::Models::EmployerListParams
      def list(params = {})
        parsed, options = VitablePartnerAPI::EmployerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "employers",
          query: parsed,
          model: VitablePartnerAPI::Models::EmployerListResponse,
          options: options
        )
      end

      # Creates a new Benefit Eligibility Policy for a specific Employer an Organization
      # has access to.
      #
      # @overload create_eligibility_policy(id, classification:, waiting_period:, policy_to_replace_id: nil, request_options: {})
      #
      # @param id [String] Path param: Employer ID (prefixed with empr\_)
      #
      # @param classification [Symbol, VitablePartnerAPI::Models::CreateEligibilityPolicyRequest::Classification] Body param:
      #
      # @param waiting_period [Symbol, VitablePartnerAPI::Models::CreateEligibilityPolicyRequest::WaitingPeriod] Body param:
      #
      # @param policy_to_replace_id [String] Query param: ID of the policy to replace
      #
      # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitablePartnerAPI::Models::EligibilityPolicy]
      #
      # @see VitablePartnerAPI::Models::EmployerCreateEligibilityPolicyParams
      def create_eligibility_policy(id, params)
        parsed, options = VitablePartnerAPI::EmployerCreateEligibilityPolicyParams.dump_request(params)
        query_params = [:policy_to_replace_id]
        @client.request(
          method: :post,
          path: ["employers/%1$s/benefit-eligibility-policy", id],
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: VitablePartnerAPI::EligibilityPolicy,
          options: options
        )
      end

      # @api private
      #
      # @param client [VitablePartnerAPI::Client]
      def initialize(client:)
        @client = client
        @employees = VitablePartnerAPI::Resources::Employers::Employees.new(client: client)
      end
    end
  end
end
