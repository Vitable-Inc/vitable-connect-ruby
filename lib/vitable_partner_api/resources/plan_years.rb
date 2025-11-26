# frozen_string_literal: true

module VitablePartnerAPI
  module Resources
    class PlanYears
      # Updates a specific Plan Year with configuration details for a Benefit Product
      # for an Employer. Can only be edited up until open enrollment starts.
      #
      # @overload update(id, contribution_classes: nil, coverage_end_date: nil, coverage_start_date: nil, open_enrollment_end_date: nil, open_enrollment_start_date: nil, plan_costs: nil, request_options: {})
      #
      # @param id [String] Plan Year ID (prefixed with plyr\_)
      #
      # @param contribution_classes [Array<VitablePartnerAPI::Models::UpdatePlanYearRequest::ContributionClass>]
      #
      # @param coverage_end_date [Date]
      #
      # @param coverage_start_date [Date]
      #
      # @param open_enrollment_end_date [Date]
      #
      # @param open_enrollment_start_date [Date]
      #
      # @param plan_costs [Array<VitablePartnerAPI::Models::UpdatePlanYearRequest::PlanCost>]
      #
      # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitablePartnerAPI::Models::PlanYear]
      #
      # @see VitablePartnerAPI::Models::PlanYearUpdateParams
      def update(id, params = {})
        parsed, options = VitablePartnerAPI::PlanYearUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["plan-years/%1$s", id],
          body: parsed,
          model: VitablePartnerAPI::PlanYear,
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
