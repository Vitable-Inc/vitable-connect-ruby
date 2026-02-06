# frozen_string_literal: true

module VitableConnect
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
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EnrollmentResponse]
      #
      # @see VitableConnect::Models::EnrollmentRetrieveParams
      def retrieve(enrollment_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/enrollments/%1$s", enrollment_id],
          model: VitableConnect::EnrollmentResponse,
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
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EnrollmentListPlansResponse]
      #
      # @see VitableConnect::Models::EnrollmentListPlansParams
      def list_plans(enrollment_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/enrollments/%1$s/plans", enrollment_id],
          model: VitableConnect::Models::EnrollmentListPlansResponse,
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
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EnrollmentResponse]
      #
      # @see VitableConnect::Models::EnrollmentReissueParams
      def reissue(enrollment_id, params)
        parsed, options = VitableConnect::EnrollmentReissueParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v1/enrollments/%1$s/reissue", enrollment_id],
          body: parsed,
          model: VitableConnect::EnrollmentResponse,
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
