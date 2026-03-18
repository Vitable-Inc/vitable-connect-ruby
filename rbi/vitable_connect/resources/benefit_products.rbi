# typed: strong

module VitableConnect
  module Resources
    class BenefitProducts
      sig { returns(VitableConnect::Resources::BenefitProducts::PlanYears) }
      attr_reader :plan_years

      # @api private
      sig { params(client: VitableConnect::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
