# frozen_string_literal: true

module VitableConnect
  module Resources
    class PlanYears
      # Retrieves detailed configuration for a specific plan year by ID. Returns
      # coverage dates, open enrollment period, available plans, and contribution
      # structure.
      #
      # @overload retrieve(plan_year_id, request_options: {})
      #
      # @param plan_year_id [String] Unique plan year identifier (plyr\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::BenefitProducts::PlanYearResponse]
      #
      # @see VitableConnect::Models::PlanYearRetrieveParams
      def retrieve(plan_year_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/plan-years/%1$s", plan_year_id],
          model: VitableConnect::BenefitProducts::PlanYearResponse,
          options: params[:request_options]
        )
      end

      # Updates an existing plan year's configuration. Important: Plan years can only be
      # edited until open enrollment starts. All fields are optional. Monetary values
      # must be in cents.
      #
      # @overload update(plan_year_id, contribution_classes: nil, open_enrollment_end: nil, open_enrollment_start: nil, status: nil, request_options: {})
      #
      # @param plan_year_id [String] Unique plan year identifier (plyr\_\*)
      #
      # @param contribution_classes [Array<VitableConnect::Models::PlanYearUpdateParams::ContributionClass>, nil] Updated contribution classes
      #
      # @param open_enrollment_end [Date, nil] Open enrollment end date
      #
      # @param open_enrollment_start [Date, nil] Open enrollment start date
      #
      # @param status [String, nil] Plan year status
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::BenefitProducts::PlanYearResponse]
      #
      # @see VitableConnect::Models::PlanYearUpdateParams
      def update(plan_year_id, params = {})
        parsed, options = VitableConnect::PlanYearUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/plan-years/%1$s", plan_year_id],
          body: parsed,
          model: VitableConnect::BenefitProducts::PlanYearResponse,
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
