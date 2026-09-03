# frozen_string_literal: true

module VitableConnect
  module Types
    class WebhookEvent < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :organization_id, -> { String }, optional: false, nullable: false

      field :event_name, -> { String }, optional: false, nullable: false

      field :resource_type, -> { String }, optional: false, nullable: false

      field :resource_id, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false
    end
  end
end
