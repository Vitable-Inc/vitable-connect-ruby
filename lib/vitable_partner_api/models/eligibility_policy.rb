# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    # @see VitablePartnerAPI::Resources::Employers#create_eligibility_policy
    class EligibilityPolicy < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute active
      #
      #   @return [Boolean]
      required :active, VitablePartnerAPI::Internal::Type::Boolean

      # @!attribute classification
      #
      #   @return [Symbol, VitablePartnerAPI::Models::EligibilityPolicy::Classification]
      required :classification, enum: -> { VitablePartnerAPI::EligibilityPolicy::Classification }

      # @!attribute employer_id
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute waiting_period
      #
      #   @return [Symbol, VitablePartnerAPI::Models::EligibilityPolicy::WaitingPeriod]
      required :waiting_period, enum: -> { VitablePartnerAPI::EligibilityPolicy::WaitingPeriod }

      # @!attribute archived_at
      #
      #   @return [Time, nil]
      optional :archived_at, Time, nil?: true

      # @!attribute replaces_policy_id
      #
      #   @return [String, nil]
      optional :replaces_policy_id, String, nil?: true

      # @!method initialize(id:, active:, classification:, employer_id:, waiting_period:, archived_at: nil, replaces_policy_id: nil)
      #   @param id [String]
      #   @param active [Boolean]
      #   @param classification [Symbol, VitablePartnerAPI::Models::EligibilityPolicy::Classification]
      #   @param employer_id [String]
      #   @param waiting_period [Symbol, VitablePartnerAPI::Models::EligibilityPolicy::WaitingPeriod]
      #   @param archived_at [Time, nil]
      #   @param replaces_policy_id [String, nil]

      # @see VitablePartnerAPI::Models::EligibilityPolicy#classification
      module Classification
        extend VitablePartnerAPI::Internal::Type::Enum

        FULL_TIME = :FULL_TIME
        PART_TIME = :PART_TIME
        ALL = :ALL

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see VitablePartnerAPI::Models::EligibilityPolicy#waiting_period
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
