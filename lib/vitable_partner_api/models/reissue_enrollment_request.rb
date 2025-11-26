# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    class ReissueEnrollmentRequest < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute qualifying_life_event_id
      #
      #   @return [String]
      required :qualifying_life_event_id, String

      # @!method initialize(qualifying_life_event_id:)
      #   @param qualifying_life_event_id [String]
    end
  end
end
