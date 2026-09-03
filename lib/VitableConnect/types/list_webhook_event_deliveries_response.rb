# frozen_string_literal: true

module VitableConnect
  module Types
    class ListWebhookEventDeliveriesResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[VitableConnect::Types::WebhookDelivery] }, optional: false, nullable: false
    end
  end
end
