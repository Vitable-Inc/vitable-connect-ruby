# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module BenefitProducts
      # @see VitableConnectAPI::Resources::BenefitProducts::PlanYears#list
      class PlanYearListParams < VitableConnectAPI::Internal::Type::BaseModel
        extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
        include VitableConnectAPI::Internal::Type::RequestParameters

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
        #   @return [Symbol, VitableConnectAPI::Models::BenefitProducts::PlanYearStatus, nil]
        optional :status, enum: -> { VitableConnectAPI::BenefitProducts::PlanYearStatus }

        # @!method initialize(employer_id: nil, limit: nil, page: nil, status: nil, request_options: {})
        #   @param employer_id [String] Filter by employer ID
        #
        #   @param limit [Integer] Items per page (default: 20, max: 100)
        #
        #   @param page [Integer] Page number (default: 1)
        #
        #   @param status [Symbol, VitableConnectAPI::Models::BenefitProducts::PlanYearStatus] Filter by plan year status
        #
        #   @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
