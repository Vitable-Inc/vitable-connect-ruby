# typed: strong

module VitablePartnerAPI
  module Models
    class CreateQualifyingLifeEventRequest < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::CreateQualifyingLifeEventRequest,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(Date) }
      attr_accessor :event_date

      sig do
        returns(
          VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType::OrSymbol
        )
      end
      attr_accessor :event_type

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(String)) }
      attr_reader :proof_document_url

      sig { params(proof_document_url: String).void }
      attr_writer :proof_document_url

      sig do
        params(
          event_date: Date,
          event_type:
            VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType::OrSymbol,
          description: String,
          proof_document_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        event_date:,
        event_type:,
        description: nil,
        proof_document_url: nil
      )
      end

      sig do
        override.returns(
          {
            event_date: Date,
            event_type:
              VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType::OrSymbol,
            description: String,
            proof_document_url: String
          }
        )
      end
      def to_hash
      end

      module EventType
        extend VitablePartnerAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MARRIAGE =
          T.let(
            :MARRIAGE,
            VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType::TaggedSymbol
          )
        BIRTH =
          T.let(
            :BIRTH,
            VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType::TaggedSymbol
          )
        ADOPTION =
          T.let(
            :ADOPTION,
            VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType::TaggedSymbol
          )
        DIVORCE =
          T.let(
            :DIVORCE,
            VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType::TaggedSymbol
          )
        DEATH =
          T.let(
            :DEATH,
            VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType::TaggedSymbol
          )
        JOB_LOSS =
          T.let(
            :JOB_LOSS,
            VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType::TaggedSymbol
          )
        REDUCTION_IN_HOURS =
          T.let(
            :REDUCTION_IN_HOURS,
            VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType::TaggedSymbol
          )
        EMPLOYER_BANKRUPTCY =
          T.let(
            :EMPLOYER_BANKRUPTCY,
            VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType::TaggedSymbol
          )
        MEDICARE_ENTITLEMENT =
          T.let(
            :MEDICARE_ENTITLEMENT,
            VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType::TaggedSymbol
          )
        TERMINATION =
          T.let(
            :TERMINATION,
            VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType::TaggedSymbol
          )
        OTHER =
          T.let(
            :OTHER,
            VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
