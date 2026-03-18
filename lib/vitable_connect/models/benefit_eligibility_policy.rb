# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::BenefitEligibilityPolicies#retrieve
    class BenefitEligibilityPolicy < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [VitableConnect::Models::BenefitEligibilityPolicy::Data]
      required :data, -> { VitableConnect::BenefitEligibilityPolicy::Data }

      # @!method initialize(data:)
      #   Response containing a single benefit eligibility policy resource.
      #
      #   @param data [VitableConnect::Models::BenefitEligibilityPolicy::Data]

      # @see VitableConnect::Models::BenefitEligibilityPolicy#data
      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute active
        #
        #   @return [Boolean]
        required :active, VitableConnect::Internal::Type::Boolean

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        response_only do
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute classification
          #
          #   @return [String]
          required :classification, String

          # @!attribute employer_id
          #
          #   @return [String]
          required :employer_id, String

          # @!attribute waiting_period
          #
          #   @return [String]
          required :waiting_period, String
        end

        # @!method initialize(id:, active:, classification:, created_at:, employer_id:, updated_at:, waiting_period:)
        #   @param id [String]
        #   @param active [Boolean]
        #   @param classification [String]
        #   @param created_at [Time]
        #   @param employer_id [String]
        #   @param updated_at [Time]
        #   @param waiting_period [String]
      end
    end
  end
end
