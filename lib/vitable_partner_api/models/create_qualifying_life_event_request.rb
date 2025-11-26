# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    class CreateQualifyingLifeEventRequest < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute event_date
      #
      #   @return [Date]
      required :event_date, Date

      # @!attribute event_type
      #
      #   @return [Symbol, VitablePartnerAPI::Models::CreateQualifyingLifeEventRequest::EventType]
      required :event_type, enum: -> { VitablePartnerAPI::CreateQualifyingLifeEventRequest::EventType }

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute proof_document_url
      #
      #   @return [String, nil]
      optional :proof_document_url, String

      # @!method initialize(event_date:, event_type:, description: nil, proof_document_url: nil)
      #   @param event_date [Date]
      #   @param event_type [Symbol, VitablePartnerAPI::Models::CreateQualifyingLifeEventRequest::EventType]
      #   @param description [String]
      #   @param proof_document_url [String]

      # @see VitablePartnerAPI::Models::CreateQualifyingLifeEventRequest#event_type
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
    end
  end
end
