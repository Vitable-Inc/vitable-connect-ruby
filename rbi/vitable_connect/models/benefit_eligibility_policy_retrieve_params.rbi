# typed: strong

module VitableConnect
  module Models
    class BenefitEligibilityPolicyRetrieveParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::BenefitEligibilityPolicyRetrieveParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique benefit eligibility policy identifier (epol\_\*)
      sig { returns(String) }
      attr_accessor :policy_id

      sig do
        params(
          policy_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique benefit eligibility policy identifier (epol\_\*)
        policy_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { policy_id: String, request_options: VitableConnect::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
