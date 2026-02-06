# frozen_string_literal: true

module VitableConnectAPI
  module Resources
    class QualifyingLifeEvents
      # @api private
      #
      # @param client [VitableConnectAPI::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
