# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#list
    class EmployerListParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute active_in
      #   Filter by active status
      #
      #   @return [Boolean, nil]
      optional :active_in, VitableConnect::Internal::Type::Boolean

      # @!attribute limit
      #   Items per page (default: 20, max: 100)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute name
      #   Filter by employer name (partial match)
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute page
      #   Page number (default: 1)
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!method initialize(active_in: nil, limit: nil, name: nil, page: nil, request_options: {})
      #   @param active_in [Boolean] Filter by active status
      #
      #   @param limit [Integer] Items per page (default: 20, max: 100)
      #
      #   @param name [String] Filter by employer name (partial match)
      #
      #   @param page [Integer] Page number (default: 1)
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
