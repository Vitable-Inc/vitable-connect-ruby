# frozen_string_literal: true

module VitablePartnerAPI
  module Resources
    class Enrollments
      # Gets the Plans eligible for selection for an Enrollment.
      #
      # @overload get_eligible_plans(id, request_options: {})
      #
      # @param id [String] Enrollment ID (prefixed with enrl\_)
      #
      # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitablePartnerAPI::Models::EnrollmentGetEligiblePlansResponse]
      #
      # @see VitablePartnerAPI::Models::EnrollmentGetEligiblePlansParams
      def get_eligible_plans(id, params = {})
        @client.request(
          method: :get,
          path: ["enrollments/%1$s/plans", id],
          model: VitablePartnerAPI::Models::EnrollmentGetEligiblePlansResponse,
          options: params[:request_options]
        )
      end

      # Reissue enrollment with QLE (description TBD).
      #
      # @overload reissue(id, qualifying_life_event_id:, request_options: {})
      #
      # @param id [String] Enrollment ID (prefixed with enrl\_)
      #
      # @param qualifying_life_event_id [String]
      #
      # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitablePartnerAPI::Models::Enrollment]
      #
      # @see VitablePartnerAPI::Models::EnrollmentReissueParams
      def reissue(id, params)
        parsed, options = VitablePartnerAPI::EnrollmentReissueParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["enrollments/%1$s/reissue", id],
          body: parsed,
          model: VitablePartnerAPI::Enrollment,
          options: options
        )
      end

      # @api private
      #
      # @param client [VitablePartnerAPI::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
