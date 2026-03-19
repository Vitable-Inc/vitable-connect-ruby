# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::BenefitEligibilityPolicies#retrieve
    class BenefitEligibilityPolicyResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [VitableConnect::Models::BenefitEligibilityPolicy]
      required :data, -> { VitableConnect::BenefitEligibilityPolicy }

      # @!method initialize(data:)
      #   Response containing a single benefit eligibility policy resource.
      #
      #   @param data [VitableConnect::Models::BenefitEligibilityPolicy]
    end
  end
end
