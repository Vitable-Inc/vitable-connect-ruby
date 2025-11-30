# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Members
      # @see VitableConnectAPI::Resources::Members::Dependents#list
      class DependentListParams < VitableConnectAPI::Internal::Type::BaseModel
        extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
        include VitableConnectAPI::Internal::Type::RequestParameters

        # @!attribute active_in
        #   Filter by active status
        #
        #   @return [Boolean, nil]
        optional :active_in, VitableConnectAPI::Internal::Type::Boolean

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

        # @!attribute relationship
        #   Filter by relationship type
        #
        #   @return [Symbol, VitableConnectAPI::Models::Members::Relationship, nil]
        optional :relationship, enum: -> { VitableConnectAPI::Members::Relationship }

        # @!method initialize(active_in: nil, limit: nil, page: nil, relationship: nil, request_options: {})
        #   @param active_in [Boolean] Filter by active status
        #
        #   @param limit [Integer] Items per page (default: 20, max: 100)
        #
        #   @param page [Integer] Page number (default: 1)
        #
        #   @param relationship [Symbol, VitableConnectAPI::Models::Members::Relationship] Filter by relationship type
        #
        #   @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
