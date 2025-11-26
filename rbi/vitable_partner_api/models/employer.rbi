# typed: strong

module VitablePartnerAPI
  module Models
    class Employer < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::Employer,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Boolean) }
      attr_accessor :active

      sig { returns(String) }
      attr_accessor :legal_name

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(VitablePartnerAPI::EligibilityPolicy)) }
      attr_reader :eligibility_policy

      sig do
        params(
          eligibility_policy:
            T.nilable(VitablePartnerAPI::EligibilityPolicy::OrHash)
        ).void
      end
      attr_writer :eligibility_policy

      sig { returns(T.nilable(String)) }
      attr_accessor :organization_id

      sig do
        params(
          id: String,
          active: T::Boolean,
          legal_name: String,
          name: String,
          eligibility_policy:
            T.nilable(VitablePartnerAPI::EligibilityPolicy::OrHash),
          organization_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        active:,
        legal_name:,
        name:,
        eligibility_policy: nil,
        organization_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            active: T::Boolean,
            legal_name: String,
            name: String,
            eligibility_policy: T.nilable(VitablePartnerAPI::EligibilityPolicy),
            organization_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
