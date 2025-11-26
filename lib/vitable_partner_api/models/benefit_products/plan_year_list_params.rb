# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    module BenefitProducts
      # @see VitablePartnerAPI::Resources::BenefitProducts::PlanYears#list
      class PlanYearListParams < VitablePartnerAPI::Internal::Type::BaseModel
        extend VitablePartnerAPI::Internal::Type::RequestParameters::Converter
        include VitablePartnerAPI::Internal::Type::RequestParameters

        # @!attribute employer_id
        #
        #   @return [String]
        required :employer_id, String

        # @!method initialize(employer_id:, request_options: {})
        #   @param employer_id [String]
        #   @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
