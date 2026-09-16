# frozen_string_literal: true

module VitableConnect
  module Organizations
    class Client
      # @param client [VitableConnect::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists the organizations the authenticated caller is an active member of (paginated), each with the role the
      # caller holds in it. Returns an empty list when the caller belongs to no organizations.
      #
      # @param request_options [Hash]
      # @param _params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.organizations.list
      #
      # @return [VitableConnect::Types::OrganizationsListResponse]
      def list(request_options: {}, **_params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/organizations",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::OrganizationsListResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
