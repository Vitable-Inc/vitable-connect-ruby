# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Members#list_qualifying_life_events
    class MemberListQualifyingLifeEventsParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute member_id
      #
      #   @return [String]
      required :member_id, String

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
      #   Optional. Filter to a single QLE status; omit to return all statuses.
      #
      #   @return [Symbol, VitableConnect::Models::MemberListQualifyingLifeEventsParams::Status, nil]
      optional :status, enum: -> { VitableConnect::MemberListQualifyingLifeEventsParams::Status }

      # @!method initialize(member_id:, limit: nil, page: nil, status: nil, request_options: {})
      #   @param member_id [String]
      #
      #   @param limit [Integer] Items per page (default: 20, max: 100)
      #
      #   @param page [Integer] Page number (default: 1)
      #
      #   @param status [Symbol, VitableConnect::Models::MemberListQualifyingLifeEventsParams::Status] Optional. Filter to a single QLE status; omit to return all statuses.
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

      # Optional. Filter to a single QLE status; omit to return all statuses.
      module Status
        extend VitableConnect::Internal::Type::Enum

        APPROVED = :approved
        DENIED = :denied
        PENDING = :pending

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
