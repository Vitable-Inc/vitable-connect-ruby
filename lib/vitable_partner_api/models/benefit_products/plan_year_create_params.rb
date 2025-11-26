# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    module BenefitProducts
      # @see VitablePartnerAPI::Resources::BenefitProducts::PlanYears#create
      class PlanYearCreateParams < VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest
        extend VitablePartnerAPI::Internal::Type::RequestParameters::Converter
        include VitablePartnerAPI::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
