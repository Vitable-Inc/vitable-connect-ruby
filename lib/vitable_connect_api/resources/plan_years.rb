# frozen_string_literal: true

module VitableConnectAPI
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
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnectAPI::Models::BenefitProducts::PlanYear]
      #
      # @see VitableConnectAPI::Models::PlanYearRetrieveParams
      def retrieve(plan_year_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/plan-years/%1$s", plan_year_id],
          model: VitableConnectAPI::BenefitProducts::PlanYear,
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
      # @param contribution_classes [Array<VitableConnectAPI::Models::PlanYearUpdateParams::ContributionClass>, nil] Updated contribution classes
      #
      # @param open_enrollment_end [Date, nil] Open enrollment end date
      #
      # @param open_enrollment_start [Date, nil] Open enrollment start date
      #
      # @param status [String, nil] Plan year status
      #
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnectAPI::Models::BenefitProducts::PlanYear]
      #
      # @see VitableConnectAPI::Models::PlanYearUpdateParams
      def update(plan_year_id, params = {})
        parsed, options = VitableConnectAPI::PlanYearUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/plan-years/%1$s", plan_year_id],
          body: parsed,
          model: VitableConnectAPI::BenefitProducts::PlanYear,
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
