# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Organizations#create
    class OrganizationCreateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #   - `BROKERAGE` - BROKERAGE
      #   - `TPA` - TPA
      #   - `GENERAL_AGENT` - GENERAL_AGENT
      #   - `CHANNEL_PARTNER` - CHANNEL_PARTNER
      #   - `CONSULTING_FIRM` - CONSULTING_FIRM
      #   - `API_PLATFORM` - API_PLATFORM
      #
      #   @return [Symbol, VitableConnect::Models::OrganizationCreateParams::Type, nil]
      optional :type, enum: -> { VitableConnect::OrganizationCreateParams::Type }, nil?: true

      # @!method initialize(name:, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::OrganizationCreateParams} for more details.
      #
      #   @param name [String]
      #
      #   @param type [Symbol, VitableConnect::Models::OrganizationCreateParams::Type, nil] - `BROKERAGE` - BROKERAGE
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

      # - `BROKERAGE` - BROKERAGE
      # - `TPA` - TPA
      # - `GENERAL_AGENT` - GENERAL_AGENT
      # - `CHANNEL_PARTNER` - CHANNEL_PARTNER
      # - `CONSULTING_FIRM` - CONSULTING_FIRM
      # - `API_PLATFORM` - API_PLATFORM
      module Type
        extend VitableConnect::Internal::Type::Enum

        BROKERAGE = :BROKERAGE
        TPA = :TPA
        GENERAL_AGENT = :GENERAL_AGENT
        CHANNEL_PARTNER = :CHANNEL_PARTNER
        CONSULTING_FIRM = :CONSULTING_FIRM
        API_PLATFORM = :API_PLATFORM

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
