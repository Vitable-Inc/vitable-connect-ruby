# typed: strong

module VitablePartnerAPI
  module Models
    class EmployerCreateEligibilityPolicyParams < VitablePartnerAPI::Models::CreateEligibilityPolicyRequest
      extend VitablePartnerAPI::Internal::Type::RequestParameters::Converter
      include VitablePartnerAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::EmployerCreateEligibilityPolicyParams,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      # ID of the policy to replace
      sig { returns(T.nilable(String)) }
      attr_reader :policy_to_replace_id

      sig { params(policy_to_replace_id: String).void }
      attr_writer :policy_to_replace_id

      sig do
        params(
          policy_to_replace_id: String,
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the policy to replace
        policy_to_replace_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            policy_to_replace_id: String,
            request_options: VitablePartnerAPI::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
