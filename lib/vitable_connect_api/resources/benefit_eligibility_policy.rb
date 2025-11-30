# frozen_string_literal: true

module VitableConnectAPI
  module Resources
    class BenefitEligibilityPolicy
      # Retrieves detailed information for a specific benefit eligibility policy by ID.
      # Returns the complete policy configuration including all eligibility rules,
      # effective dates, associated employer information, and any waiting period
      # requirements.
      #
      # @overload retrieve(policy_id, request_options: {})
      #
      # @param policy_id [String] Unique benefit eligibility policy identifier (epol\_\*)
      #
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnectAPI::Models::BenefitEligibilityPolicyAPI]
      #
      # @see VitableConnectAPI::Models::BenefitEligibilityPolicyRetrieveParams
      def retrieve(policy_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/benefit-eligibility-policy/%1$s", policy_id],
          model: VitableConnectAPI::BenefitEligibilityPolicyAPI,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [VitableConnectAPI::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
