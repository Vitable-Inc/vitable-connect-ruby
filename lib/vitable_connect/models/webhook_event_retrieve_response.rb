# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::WebhookEvents#retrieve
    class WebhookEventRetrieveResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [VitableConnect::Models::WebhookEvent]
      required :data, -> { VitableConnect::WebhookEvent }

      # @!method initialize(data:)
      #   Response containing a single webhook event resource.
      #
      #   @param data [VitableConnect::Models::WebhookEvent]
    end
  end
end
