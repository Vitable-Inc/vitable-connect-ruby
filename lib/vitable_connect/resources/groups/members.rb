# frozen_string_literal: true

module VitableConnect
  module Resources
    class Groups
      class Members
        # @return [VitableConnect::Resources::Groups::Members::Sync]
        attr_reader :sync

        # @api private
        #
        # @param client [VitableConnect::Client]
        def initialize(client:)
          @client = client
          @sync = VitableConnect::Resources::Groups::Members::Sync.new(client: client)
        end
      end
    end
  end
end
