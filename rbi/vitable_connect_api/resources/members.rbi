# typed: strong

module VitableConnectAPI
  module Resources
    class Members
      sig { returns(VitableConnectAPI::Resources::Members::Dependents) }
      attr_reader :dependents

      sig do
        returns(VitableConnectAPI::Resources::Members::QualifyingLifeEvents)
      end
      attr_reader :qualifying_life_events

      # @api private
      sig do
        params(client: VitableConnectAPI::Client).returns(T.attached_class)
      end
      def self.new(client:)
      end
    end
  end
end
