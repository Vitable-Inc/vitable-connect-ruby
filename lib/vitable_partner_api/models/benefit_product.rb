# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    class BenefitProduct < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute product_type
      #
      #   @return [String]
      required :product_type, String

      # @!attribute plans
      #
      #   @return [Array<VitablePartnerAPI::Models::Plan>, nil]
      optional :plans, -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::Plan] }

      # @!method initialize(id:, name:, product_type:, plans: nil)
      #   @param id [String]
      #   @param name [String]
      #   @param product_type [String]
      #   @param plans [Array<VitablePartnerAPI::Models::Plan>]
    end
  end
end
