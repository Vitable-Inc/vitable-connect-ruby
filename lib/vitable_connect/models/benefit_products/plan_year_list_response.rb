# frozen_string_literal: true

module VitableConnect
  module Models
    module BenefitProducts
      # @see VitableConnect::Resources::BenefitProducts::PlanYears#list
      class PlanYearListResponse < VitableConnect::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<VitableConnect::Models::BenefitProducts::PlanYear>]
        required :data, -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::BenefitProducts::PlanYear] }

        # @!attribute pagination
        #   Pagination metadata for list responses.
        #
        #   @return [VitableConnect::Models::Pagination]
        required :pagination, -> { VitableConnect::Pagination }

        # @!method initialize(data:, pagination:)
        #   Paginated list response containing plan year resources.
        #
        #   @param data [Array<VitableConnect::Models::BenefitProducts::PlanYear>]
        #
        #   @param pagination [VitableConnect::Models::Pagination] Pagination metadata for list responses.
      end
    end
  end
end
