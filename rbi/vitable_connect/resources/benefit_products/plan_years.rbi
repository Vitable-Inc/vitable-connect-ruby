# typed: strong

module VitableConnect
  module Resources
    class BenefitProducts
      class PlanYears
        # Creates a new plan year configuration for a benefit product and employer.
        # Configures coverage period dates, open enrollment window, and contribution
        # structure. All monetary values must be in cents.
        sig do
          params(
            benefit_product_id: String,
            contribution_classes:
              T::Array[
                VitableConnect::BenefitProducts::PlanYearCreateParams::ContributionClass::OrHash
              ],
            coverage_end: Date,
            coverage_start: Date,
            employer_id: String,
            open_enrollment_end: Date,
            open_enrollment_start: Date,
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(VitableConnect::BenefitProducts::PlanYearResponse)
        end
        def create(
          # Unique benefit product identifier (bprd\_\*)
          benefit_product_id,
          # List of contribution classes (at least one required)
          contribution_classes:,
          # Coverage end date
          coverage_end:,
          # Coverage start date
          coverage_start:,
          # Employer ID this plan year is for (empr\_\*)
          employer_id:,
          # Open enrollment end date
          open_enrollment_end:,
          # Open enrollment start date
          open_enrollment_start:,
          request_options: {}
        )
        end

        # Retrieves a paginated list of plan years for a specific benefit product. Plan
        # years define the coverage periods, open enrollment windows, and cost structure.
        # Results are sorted by most recent plan year first.
        sig do
          params(
            benefit_product_id: String,
            employer_id: String,
            limit: Integer,
            page: Integer,
            status: VitableConnect::BenefitProducts::PlanYearStatus::OrSymbol,
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(
            VitableConnect::Models::BenefitProducts::PlanYearListResponse
          )
        end
        def list(
          # Unique benefit product identifier (bprd\_\*)
          benefit_product_id,
          # Filter by employer ID
          employer_id: nil,
          # Items per page (default: 20, max: 100)
          limit: nil,
          # Page number (default: 1)
          page: nil,
          # Filter by plan year status
          status: nil,
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
end
