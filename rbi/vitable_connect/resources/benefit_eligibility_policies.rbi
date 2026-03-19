# typed: strong

module VitableConnect
  module Resources
    # Define rules that determine which employees qualify for benefits
    class BenefitEligibilityPolicies
      # Retrieves a benefit eligibility policy by ID.
      sig do
        params(
          policy_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::BenefitEligibilityPolicyResponse)
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
