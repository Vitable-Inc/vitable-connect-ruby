# frozen_string_literal: true

module VitableConnect
  module Resources
    class Members
      # @return [VitableConnect::Resources::Members::Dependents]
      attr_reader :dependents

      # @return [VitableConnect::Resources::Members::QualifyingLifeEvents]
      attr_reader :qualifying_life_events

      # @api private
      #
      # @param client [VitableConnect::Client]
      def initialize(client:)
        @client = client
        @dependents = VitableConnect::Resources::Members::Dependents.new(client: client)
        @qualifying_life_events = VitableConnect::Resources::Members::QualifyingLifeEvents.new(client: client)
      end
    end
  end
end
