# frozen_string_literal: true

module VitableConnect
  module Plans
    class Client
      # @param client [VitableConnect::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns a paginated list of benefit plans linked to the authenticated organization.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :limit
      # @option params [Integer, nil] :page
      #
      # @example
      #   client.plans.list(
      #     limit: 20,
      #     page: 1
      #   )
      #
      # @return [VitableConnect::Types::PlanListResponse]
      def list(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["page"] = params[:page] if params.key?(:page)

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
            path: "v1/plans",
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
            parsed_response = VitableConnect::Types::PlanListResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
