# frozen_string_literal: true

module VitableConnect
  module Auth
    class Client
      # @param client [VitableConnect::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Issues a short-lived access token from the authenticated API key. Access tokens can optionally be bound to a
      # specific employer or employee for scoped access. Tokens expire after 15 minutes.
      #
      # @param request_options [Hash]
      # @param params [VitableConnect::Auth::Types::IssueAccessTokenRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.auth.issue_access_token(grant_type: "client_credentials")
      #
      # @return [VitableConnect::Types::AccessTokenResponse]
      def issue_access_token(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/auth/access-tokens",
          body: VitableConnect::Auth::Types::IssueAccessTokenRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::AccessTokenResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
