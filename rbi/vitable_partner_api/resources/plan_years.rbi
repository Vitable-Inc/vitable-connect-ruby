# typed: strong

module VitablePartnerAPI
  module Resources
    class PlanYears
      # Updates a specific Plan Year with configuration details for a Benefit Product
      # for an Employer. Can only be edited up until open enrollment starts.
      sig do
        params(
          id: String,
          contribution_classes:
            T::Array[
              VitablePartnerAPI::UpdatePlanYearRequest::ContributionClass::OrHash
            ],
          coverage_end_date: Date,
          coverage_start_date: Date,
          open_enrollment_end_date: Date,
          open_enrollment_start_date: Date,
          plan_costs:
            T::Array[
              VitablePartnerAPI::UpdatePlanYearRequest::PlanCost::OrHash
            ],
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).returns(VitablePartnerAPI::PlanYear)
      end
      def update(
        # Plan Year ID (prefixed with plyr\_)
        id,
        contribution_classes: nil,
        coverage_end_date: nil,
        coverage_start_date: nil,
        open_enrollment_end_date: nil,
        open_enrollment_start_date: nil,
        plan_costs: nil,
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
