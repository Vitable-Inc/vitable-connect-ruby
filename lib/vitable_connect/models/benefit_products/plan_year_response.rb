# frozen_string_literal: true

module VitableConnect
  module Models
    module BenefitProducts
      # @see VitableConnect::Resources::BenefitProducts::PlanYears#create
      class PlanYearResponse < VitableConnect::Internal::Type::BaseModel
        # @!attribute data
        #   Serializer for Plan Year entity in public API responses.
        #
        #   A Plan Year represents a benefit period configuration including coverage dates,
        #   open enrollment windows, available plans, and contribution structures.
        #
        #   @return [VitableConnect::Models::BenefitProducts::PlanYear]
        required :data, -> { VitableConnect::BenefitProducts::PlanYear }

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::BenefitProducts::PlanYearResponse} for more details.
        #
        #   Response containing a single plan year resource.
        #
        #   @param data [VitableConnect::Models::BenefitProducts::PlanYear] Serializer for Plan Year entity in public API responses.
      end
    end
  end
end
