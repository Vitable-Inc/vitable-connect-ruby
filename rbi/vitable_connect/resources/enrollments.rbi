# typed: strong

module VitableConnect
  module Resources
    class Enrollments
      # Retrieves detailed information for a specific enrollment by ID. Returns selected
      # plan, coverage dates, enrolled dependents, premium amounts, and status. This
      # endpoint is critical for viewing comprehensive enrollment information.
      sig do
        params(
          enrollment_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::EnrollmentResponse)
      end
      def retrieve(
        # Unique enrollment identifier (enrl\_\*)
        enrollment_id,
        request_options: {}
      )
      end

      # Retrieves all benefit plans eligible for selection for a specific enrollment.
      # Returns available plan options with coverage tiers, premium costs, deductibles,
      # and carrier info. Use during enrollment process to show employees their plan
      # choices.
      sig do
        params(
          enrollment_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::EnrollmentListPlansResponse)
      end
      def list_plans(
        # Unique enrollment identifier (enrl\_\*)
        enrollment_id,
        request_options: {}
      )
      end

      # Reissues an enrollment due to a qualifying life event, allowing mid-year benefit
      # changes. Enables employees to modify benefit selections outside open enrollment
      # after a significant life event. Common scenarios: adding newborn child, covering
      # new spouse, adjusting coverage after losing other coverage.
      sig do
        params(
          enrollment_id: String,
          qle_id: String,
          reason: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::EnrollmentResponse)
      end
      def reissue(
        # Unique enrollment identifier (enrl\_\*)
        enrollment_id,
        # ID of the qualifying life event (qle\_\*)
        qle_id:,
        # Optional reason for reissue
        reason: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: VitableConnect::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
