# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    class QualifyingLifeEvent < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute event_date
      #
      #   @return [Date]
      required :event_date, Date

      # @!attribute event_type
      #
      #   @return [Symbol, VitablePartnerAPI::Models::QualifyingLifeEvent::EventType]
      required :event_type, enum: -> { VitablePartnerAPI::QualifyingLifeEvent::EventType }

      # @!attribute member_id
      #
      #   @return [String]
      required :member_id, String

      # @!attribute status
      #
      #   @return [Symbol, VitablePartnerAPI::Models::QualifyingLifeEvent::Status]
      required :status, enum: -> { VitablePartnerAPI::QualifyingLifeEvent::Status }

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute proof_document_url
      #
      #   @return [String, nil]
      optional :proof_document_url, String, nil?: true

      # @!attribute review_notes
      #
      #   @return [String, nil]
      optional :review_notes, String, nil?: true

      # @!attribute reviewed_at
      #
      #   @return [Time, nil]
      optional :reviewed_at, Time, nil?: true

      # @!attribute reviewed_by_user_id
      #
      #   @return [String, nil]
      optional :reviewed_by_user_id, String, nil?: true

      # @!method initialize(id:, event_date:, event_type:, member_id:, status:, description: nil, proof_document_url: nil, review_notes: nil, reviewed_at: nil, reviewed_by_user_id: nil)
      #   @param id [String]
      #   @param event_date [Date]
      #   @param event_type [Symbol, VitablePartnerAPI::Models::QualifyingLifeEvent::EventType]
      #   @param member_id [String]
      #   @param status [Symbol, VitablePartnerAPI::Models::QualifyingLifeEvent::Status]
      #   @param description [String, nil]
      #   @param proof_document_url [String, nil]
      #   @param review_notes [String, nil]
      #   @param reviewed_at [Time, nil]
      #   @param reviewed_by_user_id [String, nil]

      # @see VitablePartnerAPI::Models::QualifyingLifeEvent#event_type
      module EventType
        extend VitablePartnerAPI::Internal::Type::Enum

        MARRIAGE = :MARRIAGE
        BIRTH = :BIRTH
        ADOPTION = :ADOPTION
        DIVORCE = :DIVORCE
        DEATH = :DEATH
        JOB_LOSS = :JOB_LOSS
        REDUCTION_IN_HOURS = :REDUCTION_IN_HOURS
        EMPLOYER_BANKRUPTCY = :EMPLOYER_BANKRUPTCY
        MEDICARE_ENTITLEMENT = :MEDICARE_ENTITLEMENT
        TERMINATION = :TERMINATION
        OTHER = :OTHER

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see VitablePartnerAPI::Models::QualifyingLifeEvent#status
      module Status
        extend VitablePartnerAPI::Internal::Type::Enum

        PENDING = :PENDING
        APPROVED = :APPROVED
        DENIED = :DENIED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
