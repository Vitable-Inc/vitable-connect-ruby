# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::BenefitEligibilityPolicies#retrieve
    class BenefitEligibilityPolicyRetrieveParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute policy_id
      #   Unique benefit eligibility policy identifier (epol\_\*)
      #
      #   @return [String]
      required :policy_id, String

      # @!method initialize(policy_id:, request_options: {})
      #   @param policy_id [String] Unique benefit eligibility policy identifier (epol\_\*)
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
