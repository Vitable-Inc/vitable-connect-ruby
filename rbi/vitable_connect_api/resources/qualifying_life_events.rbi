# typed: strong

module VitableConnectAPI
  module Resources
    class QualifyingLifeEvents
      # @api private
      sig do
        params(client: VitableConnectAPI::Client).returns(T.attached_class)
      end
      def self.new(client:)
      end
    end
  end
end
