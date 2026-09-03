# frozen_string_literal: true

module VitableConnect
  module WebhookEvents
    module Types
      class ListWebhookEventsRequest < Internal::Types::Model
        field :created_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :event_name, -> { VitableConnect::Types::EventName }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :resource_id, -> { String }, optional: true, nullable: false

        field :resource_type, -> { VitableConnect::Types::ResourceType }, optional: true, nullable: false
      end
    end
  end
end
