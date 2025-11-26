# typed: strong

module VitablePartnerAPI
  module Models
    class QualifyingLifeEvent < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::QualifyingLifeEvent,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Date) }
      attr_accessor :event_date

      sig do
        returns(VitablePartnerAPI::QualifyingLifeEvent::EventType::TaggedSymbol)
      end
      attr_accessor :event_type

      sig { returns(String) }
      attr_accessor :member_id

      sig do
        returns(VitablePartnerAPI::QualifyingLifeEvent::Status::TaggedSymbol)
      end
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(String)) }
      attr_accessor :proof_document_url

      sig { returns(T.nilable(String)) }
      attr_accessor :review_notes

      sig { returns(T.nilable(Time)) }
      attr_accessor :reviewed_at

      sig { returns(T.nilable(String)) }
      attr_accessor :reviewed_by_user_id

      sig do
        params(
          id: String,
          event_date: Date,
          event_type:
            VitablePartnerAPI::QualifyingLifeEvent::EventType::OrSymbol,
          member_id: String,
          status: VitablePartnerAPI::QualifyingLifeEvent::Status::OrSymbol,
          description: T.nilable(String),
          proof_document_url: T.nilable(String),
          review_notes: T.nilable(String),
          reviewed_at: T.nilable(Time),
          reviewed_by_user_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        event_date:,
        event_type:,
        member_id:,
        status:,
        description: nil,
        proof_document_url: nil,
        review_notes: nil,
        reviewed_at: nil,
        reviewed_by_user_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            event_date: Date,
            event_type:
              VitablePartnerAPI::QualifyingLifeEvent::EventType::TaggedSymbol,
            member_id: String,
            status:
              VitablePartnerAPI::QualifyingLifeEvent::Status::TaggedSymbol,
            description: T.nilable(String),
            proof_document_url: T.nilable(String),
            review_notes: T.nilable(String),
            reviewed_at: T.nilable(Time),
            reviewed_by_user_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module EventType
        extend VitablePartnerAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitablePartnerAPI::QualifyingLifeEvent::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MARRIAGE =
          T.let(
            :MARRIAGE,
            VitablePartnerAPI::QualifyingLifeEvent::EventType::TaggedSymbol
          )
        BIRTH =
          T.let(
            :BIRTH,
            VitablePartnerAPI::QualifyingLifeEvent::EventType::TaggedSymbol
          )
        ADOPTION =
          T.let(
            :ADOPTION,
            VitablePartnerAPI::QualifyingLifeEvent::EventType::TaggedSymbol
          )
        DIVORCE =
          T.let(
            :DIVORCE,
            VitablePartnerAPI::QualifyingLifeEvent::EventType::TaggedSymbol
          )
        DEATH =
          T.let(
            :DEATH,
            VitablePartnerAPI::QualifyingLifeEvent::EventType::TaggedSymbol
          )
        JOB_LOSS =
          T.let(
            :JOB_LOSS,
            VitablePartnerAPI::QualifyingLifeEvent::EventType::TaggedSymbol
          )
        REDUCTION_IN_HOURS =
          T.let(
            :REDUCTION_IN_HOURS,
            VitablePartnerAPI::QualifyingLifeEvent::EventType::TaggedSymbol
          )
        EMPLOYER_BANKRUPTCY =
          T.let(
            :EMPLOYER_BANKRUPTCY,
            VitablePartnerAPI::QualifyingLifeEvent::EventType::TaggedSymbol
          )
        MEDICARE_ENTITLEMENT =
          T.let(
            :MEDICARE_ENTITLEMENT,
            VitablePartnerAPI::QualifyingLifeEvent::EventType::TaggedSymbol
          )
        TERMINATION =
          T.let(
            :TERMINATION,
            VitablePartnerAPI::QualifyingLifeEvent::EventType::TaggedSymbol
          )
        OTHER =
          T.let(
            :OTHER,
            VitablePartnerAPI::QualifyingLifeEvent::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitablePartnerAPI::QualifyingLifeEvent::EventType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Status
        extend VitablePartnerAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitablePartnerAPI::QualifyingLifeEvent::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :PENDING,
            VitablePartnerAPI::QualifyingLifeEvent::Status::TaggedSymbol
          )
        APPROVED =
          T.let(
            :APPROVED,
            VitablePartnerAPI::QualifyingLifeEvent::Status::TaggedSymbol
          )
        DENIED =
          T.let(
            :DENIED,
            VitablePartnerAPI::QualifyingLifeEvent::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitablePartnerAPI::QualifyingLifeEvent::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
