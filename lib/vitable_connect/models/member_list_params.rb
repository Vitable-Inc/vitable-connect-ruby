# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Members#list
    class MemberListParams < VitableConnect::Internal::Type::BaseModel
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

      # @!attribute search
      #   Case-insensitive search across member name, email, and phone number; exact match
      #   on member id (prefixed or raw uuid)
      #
      #   @return [String, nil]
      optional :search, String

      # @!method initialize(limit: nil, page: nil, search: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::MemberListParams} for more details.
      #
      #   @param limit [Integer] Items per page (default: 20, max: 100)
      #
      #   @param page [Integer] Page number (default: 1)
      #
      #   @param search [String] Case-insensitive search across member name, email, and phone number; exact match
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
