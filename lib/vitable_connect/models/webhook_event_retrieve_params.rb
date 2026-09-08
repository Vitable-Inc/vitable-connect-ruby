# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::WebhookEvents#retrieve
    class WebhookEventRetrieveParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute event_id
      #
      #   @return [String]
      required :event_id, String

      # @!method initialize(event_id:, request_options: {})
      #   @param event_id [String]
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
