# frozen_string_literal: true

module VitableConnect
  module Resources
    class PlanYears
      # @api private
      #
      # @param client [VitableConnect::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
