# typed: strong

module VitableConnect
  module Resources
    class Members
      sig { returns(VitableConnect::Resources::Members::Dependents) }
      attr_reader :dependents

      sig { returns(VitableConnect::Resources::Members::QualifyingLifeEvents) }
      attr_reader :qualifying_life_events

      # @api private
      sig { params(client: VitableConnect::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
