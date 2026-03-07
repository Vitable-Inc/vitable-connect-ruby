# frozen_string_literal: true

module VitableConnect
  module Models
    module BenefitProducts
      # @see VitableConnect::Resources::BenefitProducts::PlanYears#list
      class PlanYearListParams < VitableConnect::Internal::Type::BaseModel
        extend VitableConnect::Internal::Type::RequestParameters::Converter
        include VitableConnect::Internal::Type::RequestParameters

        # @!attribute benefit_product_id
        #   Unique benefit product identifier (bprd\_\*)
        #
        #   @return [String]
        required :benefit_product_id, String

        # @!attribute employer_id
        #   Filter by employer ID
        #
        #   @return [String, nil]
        optional :employer_id, String

        # @!attribute limit
        #   Items per page (default: 20, max: 100)
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute page
        #   Page number (default: 1)
        #
        #   @return [Integer, nil]
        optional :page, Integer

        # @!attribute status
        #   Filter by plan year status
        #
        #   @return [Symbol, VitableConnect::Models::BenefitProducts::PlanYearStatus, nil]
        optional :status, enum: -> { VitableConnect::BenefitProducts::PlanYearStatus }

        # @!method initialize(benefit_product_id:, employer_id: nil, limit: nil, page: nil, status: nil, request_options: {})
        #   @param benefit_product_id [String] Unique benefit product identifier (bprd\_\*)
        #
        #   @param employer_id [String] Filter by employer ID
        #
        #   @param limit [Integer] Items per page (default: 20, max: 100)
        #
        #   @param page [Integer] Page number (default: 1)
        #
        #   @param status [Symbol, VitableConnect::Models::BenefitProducts::PlanYearStatus] Filter by plan year status
        #
        #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
