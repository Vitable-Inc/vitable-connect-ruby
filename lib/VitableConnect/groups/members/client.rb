# frozen_string_literal: true

module VitableConnect
  module Groups
    module Members
      class Client
        # @param client [VitableConnect::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # @return [VitableConnect::Sync::Client]
        def sync
          @sync ||= VitableConnect::Groups::Members::Sync::Client.new(client: @client)
        end
      end
    end
  end
end
