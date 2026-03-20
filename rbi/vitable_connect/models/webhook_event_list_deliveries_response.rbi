# typed: strong

module VitableConnect
  module Models
    class WebhookEventListDeliveriesResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::WebhookEventListDeliveriesResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            VitableConnect::Models::WebhookEventListDeliveriesResponse::Data
          ]
        )
      end
      attr_accessor :data

      sig do
        params(
          data:
            T::Array[
              VitableConnect::Models::WebhookEventListDeliveriesResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                VitableConnect::Models::WebhookEventListDeliveriesResponse::Data
              ]
          }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::WebhookEventListDeliveriesResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        # Prefixed unique identifier for this delivery (e.g., `wdlv_...`).
        sig { returns(String) }
        attr_accessor :id

        # When this delivery record was created, in UTC.
        sig { returns(Time) }
        attr_accessor :created_at

        # When the delivery was successfully received, in UTC.
        sig { returns(T.nilable(Time)) }
        attr_accessor :delivered_at

        # When the delivery was marked as permanently failed, in UTC.
        sig { returns(T.nilable(Time)) }
        attr_accessor :failed_at

        # Reason for failure, if applicable.
        sig { returns(String) }
        attr_accessor :failure_reason

        # When the delivery attempt started, in UTC.
        sig { returns(T.nilable(Time)) }
        attr_accessor :started_at

        # Current delivery status: Pending, In Progress, Delivered, or Failed.
        sig { returns(String) }
        attr_accessor :status

        # The webhook subscription this delivery was sent to.
        sig { returns(String) }
        attr_accessor :subscription_id

        # The webhook event this delivery belongs to.
        sig { returns(String) }
        attr_accessor :webhook_event_id

        sig do
          params(
            id: String,
            created_at: Time,
            delivered_at: T.nilable(Time),
            failed_at: T.nilable(Time),
            failure_reason: String,
            started_at: T.nilable(Time),
            status: String,
            subscription_id: String,
            webhook_event_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Prefixed unique identifier for this delivery (e.g., `wdlv_...`).
          id:,
          # When this delivery record was created, in UTC.
          created_at:,
          # When the delivery was successfully received, in UTC.
          delivered_at:,
          # When the delivery was marked as permanently failed, in UTC.
          failed_at:,
          # Reason for failure, if applicable.
          failure_reason:,
          # When the delivery attempt started, in UTC.
          started_at:,
          # Current delivery status: Pending, In Progress, Delivered, or Failed.
          status:,
          # The webhook subscription this delivery was sent to.
          subscription_id:,
          # The webhook event this delivery belongs to.
          webhook_event_id:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              delivered_at: T.nilable(Time),
              failed_at: T.nilable(Time),
              failure_reason: String,
              started_at: T.nilable(Time),
              status: String,
              subscription_id: String,
              webhook_event_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
