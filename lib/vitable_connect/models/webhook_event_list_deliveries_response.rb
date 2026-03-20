# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::WebhookEvents#list_deliveries
    class WebhookEventListDeliveriesResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<VitableConnect::Models::WebhookEventListDeliveriesResponse::Data>]
      required :data,
               -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::WebhookEventListDeliveriesResponse::Data] }

      # @!method initialize(data:)
      #   @param data [Array<VitableConnect::Models::WebhookEventListDeliveriesResponse::Data>]

      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute id
        #   Prefixed unique identifier for this delivery (e.g., `wdlv_...`).
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   When this delivery record was created, in UTC.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute delivered_at
        #   When the delivery was successfully received, in UTC.
        #
        #   @return [Time, nil]
        required :delivered_at, Time, nil?: true

        # @!attribute failed_at
        #   When the delivery was marked as permanently failed, in UTC.
        #
        #   @return [Time, nil]
        required :failed_at, Time, nil?: true

        # @!attribute failure_reason
        #   Reason for failure, if applicable.
        #
        #   @return [String]
        required :failure_reason, String

        # @!attribute started_at
        #   When the delivery attempt started, in UTC.
        #
        #   @return [Time, nil]
        required :started_at, Time, nil?: true

        # @!attribute status
        #   Current delivery status: Pending, In Progress, Delivered, or Failed.
        #
        #   @return [String]
        required :status, String

        # @!attribute subscription_id
        #   The webhook subscription this delivery was sent to.
        #
        #   @return [String]
        required :subscription_id, String

        # @!attribute webhook_event_id
        #   The webhook event this delivery belongs to.
        #
        #   @return [String]
        required :webhook_event_id, String

        # @!method initialize(id:, created_at:, delivered_at:, failed_at:, failure_reason:, started_at:, status:, subscription_id:, webhook_event_id:)
        #   @param id [String] Prefixed unique identifier for this delivery (e.g., `wdlv_...`).
        #
        #   @param created_at [Time] When this delivery record was created, in UTC.
        #
        #   @param delivered_at [Time, nil] When the delivery was successfully received, in UTC.
        #
        #   @param failed_at [Time, nil] When the delivery was marked as permanently failed, in UTC.
        #
        #   @param failure_reason [String] Reason for failure, if applicable.
        #
        #   @param started_at [Time, nil] When the delivery attempt started, in UTC.
        #
        #   @param status [String] Current delivery status: Pending, In Progress, Delivered, or Failed.
        #
        #   @param subscription_id [String] The webhook subscription this delivery was sent to.
        #
        #   @param webhook_event_id [String] The webhook event this delivery belongs to.
      end
    end
  end
end
