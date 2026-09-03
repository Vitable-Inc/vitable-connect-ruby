# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single webhook event resource.
    class WebhookEventResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::WebhookEvent }, optional: false, nullable: false
    end
  end
end
