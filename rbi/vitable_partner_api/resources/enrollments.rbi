# typed: strong

module VitablePartnerAPI
  module Resources
    class Enrollments
      # Gets the Plans eligible for selection for an Enrollment.
      sig do
        params(
          id: String,
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).returns(VitablePartnerAPI::Models::EnrollmentGetEligiblePlansResponse)
      end
      def get_eligible_plans(
        # Enrollment ID (prefixed with enrl\_)
        id,
        request_options: {}
      )
      end

      # Reissue enrollment with QLE (description TBD).
      sig do
        params(
          id: String,
          qualifying_life_event_id: String,
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).returns(VitablePartnerAPI::Enrollment)
      end
      def reissue(
        # Enrollment ID (prefixed with enrl\_)
        id,
        qualifying_life_event_id:,
        request_options: {}
      )
      end

      # @api private
      sig do
        params(client: VitablePartnerAPI::Client).returns(T.attached_class)
      end
      def self.new(client:)
      end
    end
  end
end
