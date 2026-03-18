# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#list
    class EmployerListParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

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

      # @!method initialize(limit: nil, page: nil, request_options: {})
      #   @param limit [Integer] Items per page (default: 20, max: 100)
      #
      #   @param page [Integer] Page number (default: 1)
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
