# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    class ElectBenefitsRequest < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute elections
      #
      #   @return [Array<VitablePartnerAPI::Models::ElectBenefitsRequest::Election>]
      required :elections,
               -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::ElectBenefitsRequest::Election] }

      # @!method initialize(elections:)
      #   @param elections [Array<VitablePartnerAPI::Models::ElectBenefitsRequest::Election>]

      class Election < VitablePartnerAPI::Internal::Type::BaseModel
        # @!attribute decision
        #
        #   @return [Symbol, VitablePartnerAPI::Models::ElectBenefitsRequest::Election::Decision]
        required :decision, enum: -> { VitablePartnerAPI::ElectBenefitsRequest::Election::Decision }

        # @!attribute enrollment_id
        #
        #   @return [String]
        required :enrollment_id, String

        # @!attribute dependent_ids
        #
        #   @return [Array<String>, nil]
        optional :dependent_ids, VitablePartnerAPI::Internal::Type::ArrayOf[String]

        # @!attribute plan_id
        #   Required if decision is enrolled
        #
        #   @return [String, nil]
        optional :plan_id, String

        # @!method initialize(decision:, enrollment_id:, dependent_ids: nil, plan_id: nil)
        #   @param decision [Symbol, VitablePartnerAPI::Models::ElectBenefitsRequest::Election::Decision]
        #
        #   @param enrollment_id [String]
        #
        #   @param dependent_ids [Array<String>]
        #
        #   @param plan_id [String] Required if decision is enrolled

        # @see VitablePartnerAPI::Models::ElectBenefitsRequest::Election#decision
        module Decision
          extend VitablePartnerAPI::Internal::Type::Enum

          ENROLLED = :enrolled
          WAIVED = :waived

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
