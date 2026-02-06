# frozen_string_literal: true

module VitableConnect
  module Models
    module Members
      # @see VitableConnect::Resources::Members::QualifyingLifeEvents#list
      class QualifyingLifeEventListParams < VitableConnect::Internal::Type::BaseModel
        extend VitableConnect::Internal::Type::RequestParameters::Converter
        include VitableConnect::Internal::Type::RequestParameters

        # @!attribute event_type
        #   Filter by QLE type
        #
        #   @return [Symbol, VitableConnect::Models::Members::EventType, nil]
        optional :event_type, enum: -> { VitableConnect::Members::EventType }

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
        #   @return [Symbol, VitableConnect::Models::Members::QualifyingLifeEventStatus, nil]
        optional :status, enum: -> { VitableConnect::Members::QualifyingLifeEventStatus }

        # @!method initialize(event_type: nil, limit: nil, page: nil, status: nil, request_options: {})
        #   @param event_type [Symbol, VitableConnect::Models::Members::EventType] Filter by QLE type
        #
        #   @param limit [Integer] Items per page (default: 20, max: 100)
        #
        #   @param page [Integer] Page number (default: 1)
        #
        #   @param status [Symbol, VitableConnect::Models::Members::QualifyingLifeEventStatus] Filter by QLE status
        #
        #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
