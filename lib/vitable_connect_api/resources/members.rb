# frozen_string_literal: true

module VitableConnectAPI
  module Resources
    class Members
      # @return [VitableConnectAPI::Resources::Members::Dependents]
      attr_reader :dependents

      # @return [VitableConnectAPI::Resources::Members::QualifyingLifeEvents]
      attr_reader :qualifying_life_events

      # @api private
      #
      # @param client [VitableConnectAPI::Client]
      def initialize(client:)
        @client = client
        @dependents = VitableConnectAPI::Resources::Members::Dependents.new(client: client)
        @qualifying_life_events = VitableConnectAPI::Resources::Members::QualifyingLifeEvents.new(client: client)
      end
    end
  end
end
