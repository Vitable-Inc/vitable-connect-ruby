# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::BenefitProducts#list
    class BenefitProductListParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute active_in
      #   Filter by active status
      #
      #   @return [Boolean, nil]
      optional :active_in, VitableConnect::Internal::Type::Boolean

      # @!attribute category
      #   Filter by product category
      #
      #   @return [Symbol, VitableConnect::Models::Category, nil]
      optional :category, enum: -> { VitableConnect::Category }

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

      # @!attribute product_code
      #   Filter by product code
      #
      #   @return [Symbol, VitableConnect::Models::ProductCode, nil]
      optional :product_code, enum: -> { VitableConnect::ProductCode }

      # @!method initialize(active_in: nil, category: nil, limit: nil, page: nil, product_code: nil, request_options: {})
      #   @param active_in [Boolean] Filter by active status
      #
      #   @param category [Symbol, VitableConnect::Models::Category] Filter by product category
      #
      #   @param limit [Integer] Items per page (default: 20, max: 100)
      #
      #   @param page [Integer] Page number (default: 1)
      #
      #   @param product_code [Symbol, VitableConnect::Models::ProductCode] Filter by product code
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
