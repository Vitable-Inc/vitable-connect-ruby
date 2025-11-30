# typed: strong

module VitableConnectAPI
  module Resources
    class BenefitEligibilityPolicy
      # Retrieves detailed information for a specific benefit eligibility policy by ID.
      # Returns the complete policy configuration including all eligibility rules,
      # effective dates, associated employer information, and any waiting period
      # requirements.
      sig do
        params(
          policy_id: String,
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(VitableConnectAPI::BenefitEligibilityPolicyAPI)
      end
      def retrieve(
        # Unique benefit eligibility policy identifier (epol\_\*)
        policy_id,
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
