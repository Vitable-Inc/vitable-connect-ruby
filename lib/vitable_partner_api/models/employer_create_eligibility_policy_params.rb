# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    # @see VitablePartnerAPI::Resources::Employers#create_eligibility_policy
    class EmployerCreateEligibilityPolicyParams < VitablePartnerAPI::Models::CreateEligibilityPolicyRequest
      extend VitablePartnerAPI::Internal::Type::RequestParameters::Converter
      include VitablePartnerAPI::Internal::Type::RequestParameters

      # @!attribute policy_to_replace_id
      #   ID of the policy to replace
      #
      #   @return [String, nil]
      optional :policy_to_replace_id, String

      # @!method initialize(policy_to_replace_id: nil, request_options: {})
      #   @param policy_to_replace_id [String] ID of the policy to replace
      #
      #   @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
