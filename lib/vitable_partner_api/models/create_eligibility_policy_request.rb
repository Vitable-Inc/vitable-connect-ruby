# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    class CreateEligibilityPolicyRequest < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute classification
      #
      #   @return [Symbol, VitablePartnerAPI::Models::CreateEligibilityPolicyRequest::Classification]
      required :classification, enum: -> { VitablePartnerAPI::CreateEligibilityPolicyRequest::Classification }

      # @!attribute waiting_period
      #
      #   @return [Symbol, VitablePartnerAPI::Models::CreateEligibilityPolicyRequest::WaitingPeriod]
      required :waiting_period, enum: -> { VitablePartnerAPI::CreateEligibilityPolicyRequest::WaitingPeriod }

      # @!method initialize(classification:, waiting_period:)
      #   @param classification [Symbol, VitablePartnerAPI::Models::CreateEligibilityPolicyRequest::Classification]
      #   @param waiting_period [Symbol, VitablePartnerAPI::Models::CreateEligibilityPolicyRequest::WaitingPeriod]

      # @see VitablePartnerAPI::Models::CreateEligibilityPolicyRequest#classification
      module Classification
        extend VitablePartnerAPI::Internal::Type::Enum

        FULL_TIME = :FULL_TIME
        PART_TIME = :PART_TIME
        ALL = :ALL

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see VitablePartnerAPI::Models::CreateEligibilityPolicyRequest#waiting_period
      module WaitingPeriod
        extend VitablePartnerAPI::Internal::Type::Enum

        FIRST_OF_FOLLOWING_MONTH = :FIRST_OF_FOLLOWING_MONTH
        THIRTY_DAYS = :THIRTY_DAYS
        SIXTY_DAYS = :SIXTY_DAYS
        NONE = :NONE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
