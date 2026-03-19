# typed: strong

module VitableConnect
  module Models
    class BenefitEligibilityPolicyResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::BenefitEligibilityPolicyResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(VitableConnect::BenefitEligibilityPolicy) }
      attr_reader :data

      sig do
        params(data: VitableConnect::BenefitEligibilityPolicy::OrHash).void
      end
      attr_writer :data

      # Response containing a single benefit eligibility policy resource.
      sig do
        params(data: VitableConnect::BenefitEligibilityPolicy::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig do
        override.returns({ data: VitableConnect::BenefitEligibilityPolicy })
      end
      def to_hash
      end
    end
  end
end
