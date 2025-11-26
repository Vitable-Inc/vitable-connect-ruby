# typed: strong

module VitablePartnerAPI
  module Models
    class CreateEligibilityPolicyRequest < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::CreateEligibilityPolicyRequest,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig do
        returns(
          VitablePartnerAPI::CreateEligibilityPolicyRequest::Classification::OrSymbol
        )
      end
      attr_accessor :classification

      sig do
        returns(
          VitablePartnerAPI::CreateEligibilityPolicyRequest::WaitingPeriod::OrSymbol
        )
      end
      attr_accessor :waiting_period

      sig do
        params(
          classification:
            VitablePartnerAPI::CreateEligibilityPolicyRequest::Classification::OrSymbol,
          waiting_period:
            VitablePartnerAPI::CreateEligibilityPolicyRequest::WaitingPeriod::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(classification:, waiting_period:)
      end

      sig do
        override.returns(
          {
            classification:
              VitablePartnerAPI::CreateEligibilityPolicyRequest::Classification::OrSymbol,
            waiting_period:
              VitablePartnerAPI::CreateEligibilityPolicyRequest::WaitingPeriod::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Classification
        extend VitablePartnerAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitablePartnerAPI::CreateEligibilityPolicyRequest::Classification
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FULL_TIME =
          T.let(
            :FULL_TIME,
            VitablePartnerAPI::CreateEligibilityPolicyRequest::Classification::TaggedSymbol
          )
        PART_TIME =
          T.let(
            :PART_TIME,
            VitablePartnerAPI::CreateEligibilityPolicyRequest::Classification::TaggedSymbol
          )
        ALL =
          T.let(
            :ALL,
            VitablePartnerAPI::CreateEligibilityPolicyRequest::Classification::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitablePartnerAPI::CreateEligibilityPolicyRequest::Classification::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module WaitingPeriod
        extend VitablePartnerAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitablePartnerAPI::CreateEligibilityPolicyRequest::WaitingPeriod
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FIRST_OF_FOLLOWING_MONTH =
          T.let(
            :FIRST_OF_FOLLOWING_MONTH,
            VitablePartnerAPI::CreateEligibilityPolicyRequest::WaitingPeriod::TaggedSymbol
          )
        THIRTY_DAYS =
          T.let(
            :THIRTY_DAYS,
            VitablePartnerAPI::CreateEligibilityPolicyRequest::WaitingPeriod::TaggedSymbol
          )
        SIXTY_DAYS =
          T.let(
            :SIXTY_DAYS,
            VitablePartnerAPI::CreateEligibilityPolicyRequest::WaitingPeriod::TaggedSymbol
          )
        NONE =
          T.let(
            :NONE,
            VitablePartnerAPI::CreateEligibilityPolicyRequest::WaitingPeriod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitablePartnerAPI::CreateEligibilityPolicyRequest::WaitingPeriod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
