# typed: strong

module VitablePartnerAPI
  module Resources
    class BenefitProducts
      class PlanYears
        # Creates a new Plan Year with configuration for a Benefit Product for an
        # Employer. Employer would be in request body. Configures Open Enrollment Period,
        # Coverage Period, Deductions Per-Plan. Deductions per-plan are tier agnostic –
        # costs only for employee and dependent defined.
        sig do
          params(
            id: String,
            coverage_end_date: Date,
            coverage_start_date: Date,
            employer_id: String,
            open_enrollment_end_date: Date,
            open_enrollment_start_date: Date,
            contribution_classes:
              T::Array[
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::ContributionClass::OrHash
              ],
            plan_costs:
              T::Array[
                VitablePartnerAPI::BenefitProducts::CreatePlanYearRequest::PlanCost::OrHash
              ],
            request_options: VitablePartnerAPI::RequestOptions::OrHash
          ).returns(VitablePartnerAPI::PlanYear)
        end
        def create(
          # Benefit Product ID (prefixed with bprd\_)
          id,
          coverage_end_date:,
          coverage_start_date:,
          employer_id:,
          open_enrollment_end_date:,
          open_enrollment_start_date:,
          contribution_classes: nil,
          plan_costs: nil,
          request_options: {}
        )
        end

        # Gets all Plan Years with configuration details for a Benefit Product for an
        # Employer. Will be sorted by most recent Plan Year (first Plan Year is the
        # latest).
        sig do
          params(
            id: String,
            employer_id: String,
            request_options: VitablePartnerAPI::RequestOptions::OrHash
          ).returns(
            VitablePartnerAPI::Models::BenefitProducts::PlanYearListResponse
          )
        end
        def list(
          # Benefit Product ID (prefixed with bprd\_)
          id,
          employer_id:,
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
end
