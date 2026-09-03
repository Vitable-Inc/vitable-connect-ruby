# frozen_string_literal: true

module VitableConnect
  module WebhookEvents
    class Client
      # @param client [VitableConnect::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Retrieves a paginated list of webhook events for the authenticated organization. Supports filtering by event
      # name, resource type, resource ID, and date range.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :created_after
      # @option params [String, nil] :created_before
      # @option params [VitableConnect::Types::EventName, nil] :event_name
      # @option params [Integer, nil] :limit
      # @option params [Integer, nil] :page
      # @option params [String, nil] :resource_id
      # @option params [VitableConnect::Types::ResourceType, nil] :resource_type
      #
      # @example
      #   client.webhook_events.list(
      #     limit: 20,
      #     page: 1
      #   )
      #
      # @return [VitableConnect::Types::WebhookEventListResponse]
      def list(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["event_name"] = params[:event_name] if params.key?(:event_name)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["resource_id"] = params[:resource_id] if params.key?(:resource_id)
        query_params["resource_type"] = params[:resource_type] if params.key?(:resource_type)

        VitableConnect::Internal::OffsetItemIterator.new(
          initial_page: query_params["page"],
          item_field: :data,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["page"] = next_page
          request = VitableConnect::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "v1/webhook-events",
            query: query_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise VitableConnect::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            parsed_response = VitableConnect::Types::WebhookEventListResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Retrieves a single webhook event by its prefixed ID. Returns 404 if the event does not exist or belongs to a
      # different organization.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EventID] :event_id
      #
      # @example
      #   client.webhook_events.get(event_id: "event_id")
      #
      # @return [VitableConnect::Types::WebhookEventResponse]
      def get(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/webhook-events/#{URI.encode_uri_component(params[:event_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::WebhookEventResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves all delivery attempts for a webhook event. Returns up to 100 deliveries. Each delivery includes a
      # computed status field (Pending, In Progress, Delivered, or Failed).
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EventID] :event_id
      #
      # @example
      #   client.webhook_events.list_deliveries(event_id: "event_id")
      #
      # @return [VitableConnect::Types::ListWebhookEventDeliveriesResponse]
      def list_deliveries(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/webhook-events/#{URI.encode_uri_component(params[:event_id].to_s)}/deliveries",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::ListWebhookEventDeliveriesResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
