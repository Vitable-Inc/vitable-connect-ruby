# typed: strong

module VitableConnect
  module Resources
    class PlanYears
      # @api private
      sig { params(client: VitableConnect::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
