# typed: strong

module VitableConnect
  module Resources
    class Members
      # Manage dependent records (spouses, children) for employees
      sig { returns(VitableConnect::Resources::Members::Dependents) }
      attr_reader :dependents

      # Record life events that trigger special enrollment periods
      sig { returns(VitableConnect::Resources::Members::QualifyingLifeEvents) }
      attr_reader :qualifying_life_events

      # @api private
      sig { params(client: VitableConnect::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
