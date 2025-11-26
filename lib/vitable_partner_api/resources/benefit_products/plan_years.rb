# frozen_string_literal: true

module VitablePartnerAPI
  module Resources
    class BenefitProducts
      class PlanYears
        # Creates a new Plan Year with configuration for a Benefit Product for an
        # Employer. Employer would be in request body. Configures Open Enrollment Period,
        # Coverage Period, Deductions Per-Plan. Deductions per-plan are tier agnostic –
        # costs only for employee and dependent defined.
        #
        # @overload create(id, coverage_end_date:, coverage_start_date:, employer_id:, open_enrollment_end_date:, open_enrollment_start_date:, contribution_classes: nil, plan_costs: nil, request_options: {})
        #
        # @param id [String] Benefit Product ID (prefixed with bprd\_)
        #
        # @param coverage_end_date [Date]
        #
        # @param coverage_start_date [Date]
        #
        # @param employer_id [String]
        #
        # @param open_enrollment_end_date [Date]
        #
        # @param open_enrollment_start_date [Date]
        #
        # @param contribution_classes [Array<VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::ContributionClass>]
        #
        # @param plan_costs [Array<VitablePartnerAPI::Models::BenefitProducts::CreatePlanYearRequest::PlanCost>]
        #
        # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitablePartnerAPI::Models::PlanYear]
        #
        # @see VitablePartnerAPI::Models::BenefitProducts::PlanYearCreateParams
        def create(id, params)
          parsed, options = VitablePartnerAPI::BenefitProducts::PlanYearCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["benefit-products/%1$s/plan-years", id],
            body: parsed,
            model: VitablePartnerAPI::PlanYear,
            options: options
          )
        end

        # Gets all Plan Years with configuration details for a Benefit Product for an
        # Employer. Will be sorted by most recent Plan Year (first Plan Year is the
        # latest).
        #
        # @overload list(id, employer_id:, request_options: {})
        #
        # @param id [String] Benefit Product ID (prefixed with bprd\_)
        #
        # @param employer_id [String]
        #
        # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitablePartnerAPI::Models::BenefitProducts::PlanYearListResponse]
        #
        # @see VitablePartnerAPI::Models::BenefitProducts::PlanYearListParams
        def list(id, params)
          parsed, options = VitablePartnerAPI::BenefitProducts::PlanYearListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["benefit-products/%1$s/plan-years", id],
            query: parsed,
            model: VitablePartnerAPI::Models::BenefitProducts::PlanYearListResponse,
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
end
