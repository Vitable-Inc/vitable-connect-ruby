# frozen_string_literal: true

module VitableConnect
  module WebhookEvents
    module Types
      class GetWebhookEventsRequest < Internal::Types::Model
        field :event_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
