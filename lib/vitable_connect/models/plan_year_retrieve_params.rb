# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::PlanYears#retrieve
    class PlanYearRetrieveParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute plan_year_id
      #   Unique plan year identifier (plyr\_\*)
      #
      #   @return [String]
      required :plan_year_id, String

      # @!method initialize(plan_year_id:, request_options: {})
      #   @param plan_year_id [String] Unique plan year identifier (plyr\_\*)
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
