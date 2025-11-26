# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    # @see VitablePartnerAPI::Resources::BenefitProducts#generate_quote
    class Quote < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute benefit_product_id
      #
      #   @return [String]
      required :benefit_product_id, String

      # @!attribute employer_id
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute total_cost_in_cents
      #
      #   @return [Integer]
      required :total_cost_in_cents, Integer

      # @!attribute breakdown
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :breakdown, VitablePartnerAPI::Internal::Type::HashOf[VitablePartnerAPI::Internal::Type::Unknown]

      # @!method initialize(benefit_product_id:, employer_id:, total_cost_in_cents:, breakdown: nil)
      #   @param benefit_product_id [String]
      #   @param employer_id [String]
      #   @param total_cost_in_cents [Integer]
      #   @param breakdown [Hash{Symbol=>Object}]
    end
  end
end
