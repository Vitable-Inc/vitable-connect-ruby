# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    # @see VitablePartnerAPI::Resources::BenefitProducts#list
    class BenefitProductListResponse < VitablePartnerAPI::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<VitablePartnerAPI::Models::BenefitProduct>, nil]
      optional :data, -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::BenefitProduct] }

      # @!attribute pagination
      #
      #   @return [VitablePartnerAPI::Models::BenefitProductListResponse::Pagination, nil]
      optional :pagination, -> { VitablePartnerAPI::Models::BenefitProductListResponse::Pagination }

      # @!method initialize(data: nil, pagination: nil)
      #   @param data [Array<VitablePartnerAPI::Models::BenefitProduct>]
      #   @param pagination [VitablePartnerAPI::Models::BenefitProductListResponse::Pagination]

      # @see VitablePartnerAPI::Models::BenefitProductListResponse#pagination
      class Pagination < VitablePartnerAPI::Internal::Type::BaseModel
        # @!attribute limit
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute offset
        #
        #   @return [Integer]
        required :offset, Integer

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!method initialize(limit:, offset:, total:)
        #   @param limit [Integer]
        #   @param offset [Integer]
        #   @param total [Integer]
      end
    end
  end
end
