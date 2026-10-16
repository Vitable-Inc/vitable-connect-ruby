# frozen_string_literal: true

module VitableConnect
  module Enrollments
    class Client
      # @param client [VitableConnect::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Retrieves a single enrollment: the employee and employer it belongs to, the benefit product, its status, the
      # coverage period, the employee payroll deduction and employer contribution, and the enrolled plan's Summary of
      # Benefits and Coverage document when one is on file. An enrollment the caller cannot reach is indistinguishable
      # from one that does not exist.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EnrollmentID] :enrollment_id
      #
      # @example
      #   client.enrollments.get(enrollment_id: "enrl_AAAAAAAAAAAAAAAAAAAAAQ")
      #
      # @return [VitableConnect::Types::EnrollmentResponse]
      def get(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v1/enrollments/#{URI.encode_uri_component(params[:enrollment_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::EnrollmentResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Closes the targeted enrollment and creates a new unanswered enrollment for the same member and plan year. VPC
      # never requires a qualifying life event; other products require an accepted, member-owned event outside open
      # enrollment. User-backed callers must provide a reason; it is optional for organization API-key callers. Tenant
      # mismatches return a non-disclosing 404 before the request body is validated.
      #
      # @param request_options [Hash]
      # @param params [VitableConnect::Enrollments::Types::ReissueEnrollmentRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EnrollmentID] :enrollment_id
      #
      # @example
      #   client.enrollments.reissue(
      #     enrollment_id: "enrl_AAAAAAAAAAAAAAAAAAAAAQ",
      #     reason: "Member needs a new election after a qualifying event.",
      #     ticket_number: "BPT-1234",
      #     qualifying_life_event_id: "qle_AAAAAAAAAAAAAAAAAAAAAQ"
      #   )
      #
      # @return [VitableConnect::Types::ReissueEnrollmentResponse]
      def reissue(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request_data = VitableConnect::Enrollments::Types::ReissueEnrollmentRequest.new(params).to_h
        non_body_param_names = %w[enrollment_id]
        body = request_data.except(*non_body_param_names)

        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/enrollments/#{URI.encode_uri_component(params[:enrollment_id].to_s)}/reissue",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          VitableConnect::Types::ReissueEnrollmentResponse.load(response.body)
        else
          error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Terminates enrolled coverage immediately. An accepted qualifying life event owned by the enrollment member is
      # required unless the plan is VPC or ICHRA. User-backed callers must provide a reason; it is optional for
      # organization API-key callers. API keys may act across the caller organization's book. Tenant mismatches return
      # the same non-disclosing 404 before the request body is validated.
      #
      # @param request_options [Hash]
      # @param params [VitableConnect::Enrollments::Types::TerminateEnrollmentRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [VitableConnect::Types::EnrollmentID] :enrollment_id
      #
      # @example
      #   client.enrollments.terminate(
      #     enrollment_id: "enrl_AAAAAAAAAAAAAAAAAAAAAQ",
      #     reason: "Member requested coverage termination after a qualifying event.",
      #     ticket_number: "BPT-1234",
      #     qualifying_life_event_id: "qle_AAAAAAAAAAAAAAAAAAAAAQ"
      #   )
      #
      # @return [untyped]
      def terminate(request_options: {}, **params)
        params = VitableConnect::Internal::Types::Utils.normalize_keys(params)
        request_data = VitableConnect::Enrollments::Types::TerminateEnrollmentRequest.new(params).to_h
        non_body_param_names = %w[enrollment_id]
        body = request_data.except(*non_body_param_names)

        request = VitableConnect::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v1/enrollments/#{URI.encode_uri_component(params[:enrollment_id].to_s)}/terminate",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise VitableConnect::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = VitableConnect::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end
  end
end
