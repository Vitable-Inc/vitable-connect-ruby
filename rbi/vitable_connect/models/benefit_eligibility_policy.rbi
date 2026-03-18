# typed: strong

module VitableConnect
  module Models
    class BenefitEligibilityPolicy < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::BenefitEligibilityPolicy,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(VitableConnect::BenefitEligibilityPolicy::Data) }
      attr_reader :data

      sig do
        params(
          data: VitableConnect::BenefitEligibilityPolicy::Data::OrHash
        ).void
      end
      attr_writer :data

      # Response containing a single benefit eligibility policy resource.
      sig do
        params(
          data: VitableConnect::BenefitEligibilityPolicy::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: VitableConnect::BenefitEligibilityPolicy::Data }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::BenefitEligibilityPolicy::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :active

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :classification

        sig { returns(String) }
        attr_accessor :employer_id

        sig { returns(String) }
        attr_accessor :waiting_period

        sig do
          params(
            id: String,
            active: T::Boolean,
            classification: String,
            created_at: Time,
            employer_id: String,
            updated_at: Time,
            waiting_period: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          active:,
          classification:,
          created_at:,
          employer_id:,
          updated_at:,
          waiting_period:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              active: T::Boolean,
              classification: String,
              created_at: Time,
              employer_id: String,
              updated_at: Time,
              waiting_period: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
