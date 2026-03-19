# frozen_string_literal: true

module VitableConnect
  module Resources
    # Define rules that determine which employees qualify for benefits
    class BenefitEligibilityPolicies
      # Retrieves a benefit eligibility policy by ID.
      #
      # @overload retrieve(policy_id, request_options: {})
      #
      # @param policy_id [String] Unique benefit eligibility policy identifier (epol\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::BenefitEligibilityPolicyResponse]
      #
      # @see VitableConnect::Models::BenefitEligibilityPolicyRetrieveParams
      def retrieve(policy_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/benefit-eligibility-policies/%1$s", policy_id],
          model: VitableConnect::BenefitEligibilityPolicyResponse,
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
