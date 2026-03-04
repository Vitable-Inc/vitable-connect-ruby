# typed: strong

module VitableConnect
  module Resources
    # Define rules that determine which employees qualify for benefits
    class BenefitEligibilityPolicies
      # Retrieves detailed information for a specific benefit eligibility policy by ID.
      # Returns the complete policy configuration including all eligibility rules,
      # effective dates, associated employer information, and any waiting period
      # requirements.
      sig do
        params(
          policy_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::BenefitEligibilityPolicy)
      end
      def retrieve(
        # Unique benefit eligibility policy identifier (epol\_\*)
        policy_id,
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
