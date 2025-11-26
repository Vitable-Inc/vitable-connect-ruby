# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    module BenefitProducts
      # @see VitablePartnerAPI::Resources::BenefitProducts::PlanYears#list
      class PlanYearListResponse < VitablePartnerAPI::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<VitablePartnerAPI::Models::PlanYear>, nil]
        optional :data, -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::PlanYear] }

        # @!method initialize(data: nil)
        #   @param data [Array<VitablePartnerAPI::Models::PlanYear>]
      end
    end
  end
end
