# frozen_string_literal: true

module VitableConnect
  module Resources
    class BenefitEligibilityPolicies
      # Retrieves detailed information for a specific benefit eligibility policy by ID.
      # Returns the complete policy configuration including all eligibility rules,
      # effective dates, associated employer information, and any waiting period
      # requirements.
      #
      # @overload retrieve(policy_id, request_options: {})
      #
      # @param policy_id [String] Unique benefit eligibility policy identifier (epol\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::BenefitEligibilityPolicy]
      #
      # @see VitableConnect::Models::BenefitEligibilityPolicyRetrieveParams
      def retrieve(policy_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/benefit-eligibility-policies/%1$s", policy_id],
          model: VitableConnect::BenefitEligibilityPolicy,
          options: params[:request_options]
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
