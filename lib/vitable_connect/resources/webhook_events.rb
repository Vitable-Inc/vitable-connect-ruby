# frozen_string_literal: true

module VitableConnect
  module Resources
    class WebhookEvents
      # Retrieves a single webhook event by its prefixed ID. Returns 404 if the event
      # does not exist or belongs to a different organization.
      #
      # @overload retrieve(event_id, request_options: {})
      #
      # @param event_id [String]
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::WebhookEventRetrieveResponse]
      #
      # @see VitableConnect::Models::WebhookEventRetrieveParams
      def retrieve(event_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/webhook-events/%1$s", event_id],
          model: VitableConnect::Models::WebhookEventRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {VitableConnect::Models::WebhookEventListParams} for more details.
      #
      # Retrieves a paginated list of webhook events for the authenticated organization.
      # Supports filtering by event name, resource type, resource ID, and date range.
      #
      # @overload list(created_after: nil, created_before: nil, event_name: nil, limit: nil, page: nil, resource_id: nil, resource_type: nil, request_options: {})
      #
      # @param created_after [Time]
      #
      # @param created_before [Time]
      #
      # @param event_name [Symbol, VitableConnect::Models::WebhookEventListParams::EventName] - `enrollment.accepted` - Enrollment Accepted
      #
      # @param limit [Integer] Items per page (default: 20, max: 100)
      #
      # @param page [Integer] Page number (default: 1)
      #
      # @param resource_id [String]
      #
      # @param resource_type [Symbol, VitableConnect::Models::WebhookEventListParams::ResourceType] - `enrollment` - Enrollment
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Internal::PageNumberPage<VitableConnect::Models::WebhookEvent>]
      #
      # @see VitableConnect::Models::WebhookEventListParams
      def list(params = {})
        parsed, options = VitableConnect::WebhookEventListParams.dump_request(params)
        query = VitableConnect::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/webhook-events",
          query: query,
          page: VitableConnect::Internal::PageNumberPage,
          model: VitableConnect::WebhookEvent,
          options: options
        )
      end

      # Retrieves all delivery attempts for a webhook event. Returns up to 100
      # deliveries. Each delivery includes a computed status field (Pending, In
      # Progress, Delivered, or Failed).
      #
      # @overload list_deliveries(event_id, request_options: {})
      #
      # @param event_id [String]
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::WebhookEventListDeliveriesResponse]
      #
      # @see VitableConnect::Models::WebhookEventListDeliveriesParams
      def list_deliveries(event_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/webhook-events/%1$s/deliveries", event_id],
          model: VitableConnect::Models::WebhookEventListDeliveriesResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [VitableConnect::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
