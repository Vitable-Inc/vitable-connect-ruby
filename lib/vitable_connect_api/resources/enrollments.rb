# frozen_string_literal: true

module VitableConnectAPI
  module Resources
    class Enrollments
      # Retrieves detailed information for a specific enrollment by ID. Returns selected
      # plan, coverage dates, enrolled dependents, premium amounts, and status. This
      # endpoint is critical for viewing comprehensive enrollment information.
      #
      # @overload retrieve(enrollment_id, request_options: {})
      #
      # @param enrollment_id [String] Unique enrollment identifier (enrl\_\*)
      #
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnectAPI::Models::EnrollmentRetrieveResponse]
      #
      # @see VitableConnectAPI::Models::EnrollmentRetrieveParams
      def retrieve(enrollment_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/enrollments/%1$s", enrollment_id],
          model: VitableConnectAPI::Models::EnrollmentRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Retrieves all benefit plans eligible for selection for a specific enrollment.
      # Returns available plan options with coverage tiers, premium costs, deductibles,
      # and carrier info. Use during enrollment process to show employees their plan
      # choices.
      #
      # @overload list_plans(enrollment_id, request_options: {})
      #
      # @param enrollment_id [String] Unique enrollment identifier (enrl\_\*)
      #
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnectAPI::Models::EnrollmentListPlansResponse]
      #
      # @see VitableConnectAPI::Models::EnrollmentListPlansParams
      def list_plans(enrollment_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/enrollments/%1$s/plans", enrollment_id],
          model: VitableConnectAPI::Models::EnrollmentListPlansResponse,
          options: params[:request_options]
        )
      end

      # Reissues an enrollment due to a qualifying life event, allowing mid-year benefit
      # changes. Enables employees to modify benefit selections outside open enrollment
      # after a significant life event. Common scenarios: adding newborn child, covering
      # new spouse, adjusting coverage after losing other coverage.
      #
      # @overload reissue(enrollment_id, qle_id:, reason: nil, request_options: {})
      #
      # @param enrollment_id [String] Unique enrollment identifier (enrl\_\*)
      #
      # @param qle_id [String] ID of the qualifying life event (qle\_\*)
      #
      # @param reason [String, nil] Optional reason for reissue
      #
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnectAPI::Models::EnrollmentReissueResponse]
      #
      # @see VitableConnectAPI::Models::EnrollmentReissueParams
      def reissue(enrollment_id, params)
        parsed, options = VitableConnectAPI::EnrollmentReissueParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/enrollments/%1$s/reissue", enrollment_id],
          body: parsed,
          model: VitableConnectAPI::Models::EnrollmentReissueResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [VitableConnectAPI::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
