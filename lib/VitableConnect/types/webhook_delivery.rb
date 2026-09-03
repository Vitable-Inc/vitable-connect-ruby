# frozen_string_literal: true

module VitableConnect
  module Types
    class WebhookDelivery < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :webhook_event_id, -> { String }, optional: false, nullable: false

      field :subscription_id, -> { String }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: false

      field :started_at, -> { String }, optional: false, nullable: true

      field :delivered_at, -> { String }, optional: false, nullable: true

      field :failed_at, -> { String }, optional: false, nullable: true

      field :failure_reason, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false
    end
  end
end
