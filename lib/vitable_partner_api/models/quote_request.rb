# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    class QuoteRequest < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute employer_id
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute metadata
      #   Additional metadata for quote generation
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, VitablePartnerAPI::Internal::Type::HashOf[VitablePartnerAPI::Internal::Type::Unknown]

      # @!method initialize(employer_id:, metadata: nil)
      #   @param employer_id [String]
      #
      #   @param metadata [Hash{Symbol=>Object}] Additional metadata for quote generation
    end
  end
end
