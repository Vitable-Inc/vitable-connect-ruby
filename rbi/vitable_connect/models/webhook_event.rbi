# typed: strong

module VitableConnect
  module Models
    class WebhookEvent < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(VitableConnect::WebhookEvent, VitableConnect::Internal::AnyHash)
        end

      # Prefixed unique identifier for this webhook event (e.g., `wevt_...`).
      sig { returns(String) }
      attr_accessor :id

      # When the event occurred, in UTC.
      sig { returns(Time) }
      attr_accessor :created_at

      # The event type, formatted as `{resource}.{action}` (e.g.,
      # `enrollment.accepted`).
      sig { returns(String) }
      attr_accessor :event_name

      # The organization this event belongs to.
      sig { returns(String) }
      attr_accessor :organization_id

      # Prefixed ID of the affected resource. Use this to fetch the current state from
      # the API.
      sig { returns(String) }
      attr_accessor :resource_id

      # The type of resource affected (e.g., `enrollment`, `employee`).
      sig { returns(String) }
      attr_accessor :resource_type

      sig do
        params(
          id: String,
          created_at: Time,
          event_name: String,
          organization_id: String,
          resource_id: String,
          resource_type: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Prefixed unique identifier for this webhook event (e.g., `wevt_...`).
        id:,
        # When the event occurred, in UTC.
        created_at:,
        # The event type, formatted as `{resource}.{action}` (e.g.,
        # `enrollment.accepted`).
        event_name:,
        # The organization this event belongs to.
        organization_id:,
        # Prefixed ID of the affected resource. Use this to fetch the current state from
        # the API.
        resource_id:,
        # The type of resource affected (e.g., `enrollment`, `employee`).
        resource_type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            event_name: String,
            organization_id: String,
            resource_id: String,
            resource_type: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
