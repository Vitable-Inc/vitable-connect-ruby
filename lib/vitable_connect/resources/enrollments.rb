# frozen_string_literal: true

module VitableConnect
  module Resources
    # Manage benefit enrollments and elections for employees
    class Enrollments
      # Retrieves detailed information for a specific enrollment by ID.
      #
      # @overload retrieve(enrollment_id, request_options: {})
      #
      # @param enrollment_id [String] Unique enrollment identifier (enrl\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EnrollmentRetrieveResponse]
      #
      # @see VitableConnect::Models::EnrollmentRetrieveParams
      def retrieve(enrollment_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/enrollments/%1$s", enrollment_id],
          model: VitableConnect::Models::EnrollmentRetrieveResponse,
          security: {api_key_auth: true},
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {VitableConnect::Models::EnrollmentReissueParams} for more details.
      #
      # Closes the targeted enrollment and creates a new unanswered enrollment for the
      # same member and plan year. VPC never requires a qualifying life event; other
      # products require an accepted, member-owned event outside open enrollment.
      # User-backed callers must provide a reason; it is optional for userless
      # organization callers. API keys and unbound access tokens may act across the
      # caller organization's book. Employer-bound access tokens may act only on that
      # employer's enrollments, and employee-bound access tokens may act only on that
      # employee's enrollment. Tenant or token-scope mismatches return the same
      # non-disclosing 404 before the request body is validated.
      #
      # @overload reissue(enrollment_id, qualifying_life_event_id: nil, reason: nil, ticket_number: nil, request_options: {})
      #
      # @param enrollment_id [String] Unique enrollment identifier (enrl\_\*)
      #
      # @param qualifying_life_event_id [String, nil] Accepted member qualifying life event identifier (qle\_\*)
      #
      # @param reason [String, nil] Audit reason for the reissue; required for user-backed callers and optional for
      #
      # @param ticket_number [String, nil] Optional support or operational ticket number
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EnrollmentReissueResponse]
      #
      # @see VitableConnect::Models::EnrollmentReissueParams
      def reissue(enrollment_id, params = {})
        parsed, options = VitableConnect::EnrollmentReissueParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/enrollments/%1$s/reissue", enrollment_id],
          body: parsed,
          model: VitableConnect::Models::EnrollmentReissueResponse,
          security: {api_key_auth: true},
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {VitableConnect::Models::EnrollmentTerminateParams} for more details.
      #
      # Terminates enrolled coverage immediately. An accepted qualifying life event
      # owned by the enrollment member is required unless the plan is VPC or ICHRA.
      # User-backed callers must provide a reason; it is optional for userless
      # organization callers. API keys may act across the caller organization's book.
      # Tenant mismatches return the same non-disclosing 404 before the request body is
      # validated.
      #
      # @overload terminate(enrollment_id, qualifying_life_event_id: nil, reason: nil, ticket_number: nil, request_options: {})
      #
      # @param enrollment_id [String] Unique enrollment identifier (enrl\_\*)
      #
      # @param qualifying_life_event_id [String, nil] Accepted member qualifying life event identifier (qle\_\*)
      #
      # @param reason [String, nil] Audit reason for the termination; required for user-backed callers and optional
      #
      # @param ticket_number [String, nil] Optional support or operational ticket number
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see VitableConnect::Models::EnrollmentTerminateParams
      def terminate(enrollment_id, params = {})
        parsed, options = VitableConnect::EnrollmentTerminateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/enrollments/%1$s/terminate", enrollment_id],
          body: parsed,
          model: NilClass,
          security: {api_key_auth: true},
          options: options
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
