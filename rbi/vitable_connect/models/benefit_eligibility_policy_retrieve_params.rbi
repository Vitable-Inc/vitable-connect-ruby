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

      sig do
        params(request_options: VitableConnect::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig do
        override.returns({ request_options: VitableConnect::RequestOptions })
      end
      def to_hash
      end
    end
  end
end
