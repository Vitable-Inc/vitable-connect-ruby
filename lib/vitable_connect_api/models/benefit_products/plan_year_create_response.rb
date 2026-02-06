# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module BenefitProducts
      # @see VitableConnectAPI::Resources::BenefitProducts::PlanYears#create
      class PlanYearCreateResponse < VitableConnectAPI::Internal::Type::BaseModel
        # @!attribute data
        #   Serializer for Plan Year entity in public API responses.
        #
        #   A Plan Year represents a benefit period configuration including coverage dates,
        #   open enrollment windows, available plans, and contribution structures.
        #
        #   @return [VitableConnectAPI::Models::BenefitProducts::PlanYear]
        required :data, -> { VitableConnectAPI::BenefitProducts::PlanYear }

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnectAPI::Models::BenefitProducts::PlanYearCreateResponse} for more
        #   details.
        #
        #   Response containing a single plan year resource.
        #
        #   @param data [VitableConnectAPI::Models::BenefitProducts::PlanYear] Serializer for Plan Year entity in public API responses.
      end
    end
  end
end
