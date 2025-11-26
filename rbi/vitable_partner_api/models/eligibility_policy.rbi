# typed: strong

module VitablePartnerAPI
  module Models
    class EligibilityPolicy < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::EligibilityPolicy,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Boolean) }
      attr_accessor :active

      sig do
        returns(
          VitablePartnerAPI::EligibilityPolicy::Classification::TaggedSymbol
        )
      end
      attr_accessor :classification

      sig { returns(String) }
      attr_accessor :employer_id

      sig do
        returns(
          VitablePartnerAPI::EligibilityPolicy::WaitingPeriod::TaggedSymbol
        )
      end
      attr_accessor :waiting_period

      sig { returns(T.nilable(Time)) }
      attr_accessor :archived_at

      sig { returns(T.nilable(String)) }
      attr_accessor :replaces_policy_id

      sig do
        params(
          id: String,
          active: T::Boolean,
          classification:
            VitablePartnerAPI::EligibilityPolicy::Classification::OrSymbol,
          employer_id: String,
          waiting_period:
            VitablePartnerAPI::EligibilityPolicy::WaitingPeriod::OrSymbol,
          archived_at: T.nilable(Time),
          replaces_policy_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        active:,
        classification:,
        employer_id:,
        waiting_period:,
        archived_at: nil,
        replaces_policy_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            active: T::Boolean,
            classification:
              VitablePartnerAPI::EligibilityPolicy::Classification::TaggedSymbol,
            employer_id: String,
            waiting_period:
              VitablePartnerAPI::EligibilityPolicy::WaitingPeriod::TaggedSymbol,
            archived_at: T.nilable(Time),
            replaces_policy_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module Classification
        extend VitablePartnerAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitablePartnerAPI::EligibilityPolicy::Classification)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FULL_TIME =
          T.let(
            :FULL_TIME,
            VitablePartnerAPI::EligibilityPolicy::Classification::TaggedSymbol
          )
        PART_TIME =
          T.let(
            :PART_TIME,
            VitablePartnerAPI::EligibilityPolicy::Classification::TaggedSymbol
          )
        ALL =
          T.let(
            :ALL,
            VitablePartnerAPI::EligibilityPolicy::Classification::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitablePartnerAPI::EligibilityPolicy::Classification::TaggedSymbol
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
            T.all(Symbol, VitablePartnerAPI::EligibilityPolicy::WaitingPeriod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FIRST_OF_FOLLOWING_MONTH =
          T.let(
            :FIRST_OF_FOLLOWING_MONTH,
            VitablePartnerAPI::EligibilityPolicy::WaitingPeriod::TaggedSymbol
          )
        THIRTY_DAYS =
          T.let(
            :THIRTY_DAYS,
            VitablePartnerAPI::EligibilityPolicy::WaitingPeriod::TaggedSymbol
          )
        SIXTY_DAYS =
          T.let(
            :SIXTY_DAYS,
            VitablePartnerAPI::EligibilityPolicy::WaitingPeriod::TaggedSymbol
          )
        NONE =
          T.let(
            :NONE,
            VitablePartnerAPI::EligibilityPolicy::WaitingPeriod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitablePartnerAPI::EligibilityPolicy::WaitingPeriod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
