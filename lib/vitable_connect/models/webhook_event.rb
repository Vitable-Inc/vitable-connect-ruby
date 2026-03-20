# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::WebhookEvents#list
    class WebhookEvent < VitableConnect::Internal::Type::BaseModel
      # @!attribute id
      #   Prefixed unique identifier for this webhook event (e.g., `wevt_...`).
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   When the event occurred, in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute event_name
      #   The event type, formatted as `{resource}.{action}` (e.g.,
      #   `enrollment.accepted`).
      #
      #   @return [String]
      required :event_name, String

      # @!attribute organization_id
      #   The organization this event belongs to.
      #
      #   @return [String]
      required :organization_id, String

      # @!attribute resource_id
      #   Prefixed ID of the affected resource. Use this to fetch the current state from
      #   the API.
      #
      #   @return [String]
      required :resource_id, String

      # @!attribute resource_type
      #   The type of resource affected (e.g., `enrollment`, `employee`).
      #
      #   @return [String]
      required :resource_type, String

      # @!method initialize(id:, created_at:, event_name:, organization_id:, resource_id:, resource_type:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::WebhookEvent} for more details.
      #
      #   @param id [String] Prefixed unique identifier for this webhook event (e.g., `wevt_...`).
      #
      #   @param created_at [Time] When the event occurred, in UTC.
      #
      #   @param event_name [String] The event type, formatted as `{resource}.{action}` (e.g., `enrollment.accepted`)
      #
      #   @param organization_id [String] The organization this event belongs to.
      #
      #   @param resource_id [String] Prefixed ID of the affected resource. Use this to fetch the current state from t
      #
      #   @param resource_type [String] The type of resource affected (e.g., `enrollment`, `employee`).
    end
  end
end
