# frozen_string_literal: true

module VitableConnectAPI
  module Resources
    class BenefitProducts
      class PlanYears
        # Creates a new plan year configuration for a benefit product and employer.
        # Configures coverage period dates, open enrollment window, and contribution
        # structure. All monetary values must be in cents.
        #
        # @overload create(benefit_product_id, contribution_classes:, coverage_end:, coverage_start:, employer_id:, open_enrollment_end:, open_enrollment_start:, request_options: {})
        #
        # @param benefit_product_id [String] Unique benefit product identifier (bprd\_\*)
        #
        # @param contribution_classes [Array<VitableConnectAPI::Models::BenefitProducts::PlanYearCreateParams::ContributionClass>] List of contribution classes (at least one required)
        #
        # @param coverage_end [Date] Coverage end date
        #
        # @param coverage_start [Date] Coverage start date
        #
        # @param employer_id [String] Employer ID this plan year is for (empr\_\*)
        #
        # @param open_enrollment_end [Date] Open enrollment end date
        #
        # @param open_enrollment_start [Date] Open enrollment start date
        #
        # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitableConnectAPI::Models::BenefitProducts::PlanYearCreateResponse]
        #
        # @see VitableConnectAPI::Models::BenefitProducts::PlanYearCreateParams
        def create(benefit_product_id, params)
          parsed, options = VitableConnectAPI::BenefitProducts::PlanYearCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/benefit-products/%1$s/plan-years", benefit_product_id],
            body: parsed,
            model: VitableConnectAPI::Models::BenefitProducts::PlanYearCreateResponse,
            options: options
          )
        end

        # Retrieves a paginated list of plan years for a specific benefit product. Plan
        # years define the coverage periods, open enrollment windows, and cost structure.
        # Results are sorted by most recent plan year first.
        #
        # @overload list(benefit_product_id, employer_id: nil, limit: nil, page: nil, status: nil, request_options: {})
        #
        # @param benefit_product_id [String] Unique benefit product identifier (bprd\_\*)
        #
        # @param employer_id [String] Filter by employer ID
        #
        # @param limit [Integer] Items per page (default: 20, max: 100)
        #
        # @param page [Integer] Page number (default: 1)
        #
        # @param status [Symbol, VitableConnectAPI::Models::BenefitProducts::PlanYearStatus] Filter by plan year status
        #
        # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [VitableConnectAPI::Models::BenefitProducts::PlanYearListResponse]
        #
        # @see VitableConnectAPI::Models::BenefitProducts::PlanYearListParams
        def list(benefit_product_id, params = {})
          parsed, options = VitableConnectAPI::BenefitProducts::PlanYearListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["v1/benefit-products/%1$s/plan-years", benefit_product_id],
            query: parsed,
            model: VitableConnectAPI::Models::BenefitProducts::PlanYearListResponse,
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
end
