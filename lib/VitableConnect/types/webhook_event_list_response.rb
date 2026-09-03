# frozen_string_literal: true

module VitableConnect
  module Types
    # Paginated list response containing webhook event resources.
    class WebhookEventListResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[VitableConnect::Types::WebhookEvent] }, optional: false, nullable: false

      field :pagination, -> { VitableConnect::Types::Pagination }, optional: false, nullable: false
    end
  end
end
