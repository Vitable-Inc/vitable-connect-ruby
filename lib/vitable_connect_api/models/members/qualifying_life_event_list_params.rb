# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Members
      # @see VitableConnectAPI::Resources::Members::QualifyingLifeEvents#list
      class QualifyingLifeEventListParams < VitableConnectAPI::Internal::Type::BaseModel
        extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
        include VitableConnectAPI::Internal::Type::RequestParameters

        # @!attribute event_type
        #   Filter by QLE type
        #
        #   @return [Symbol, VitableConnectAPI::Models::Members::EventType, nil]
        optional :event_type, enum: -> { VitableConnectAPI::Members::EventType }

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
        #   Filter by QLE status
        #
        #   @return [Symbol, VitableConnectAPI::Models::Members::QualifyingLifeEventStatus, nil]
        optional :status, enum: -> { VitableConnectAPI::Members::QualifyingLifeEventStatus }

        # @!method initialize(event_type: nil, limit: nil, page: nil, status: nil, request_options: {})
        #   @param event_type [Symbol, VitableConnectAPI::Models::Members::EventType] Filter by QLE type
        #
        #   @param limit [Integer] Items per page (default: 20, max: 100)
        #
        #   @param page [Integer] Page number (default: 1)
        #
        #   @param status [Symbol, VitableConnectAPI::Models::Members::QualifyingLifeEventStatus] Filter by QLE status
        #
        #   @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
