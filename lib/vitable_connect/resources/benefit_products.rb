# frozen_string_literal: true

module VitableConnect
  module Resources
    class BenefitProducts
      # @return [VitableConnect::Resources::BenefitProducts::PlanYears]
      attr_reader :plan_years

      # @api private
      #
      # @param client [VitableConnect::Client]
      def initialize(client:)
        @client = client
        @plan_years = VitableConnect::Resources::BenefitProducts::PlanYears.new(client: client)
      end
    end
  end
end
