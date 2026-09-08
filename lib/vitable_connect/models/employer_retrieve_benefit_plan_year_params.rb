# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#retrieve_benefit_plan_year
    class EmployerRetrieveBenefitPlanYearParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute employer_id
      #   Unique employer identifier (empr\_\*)
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute benefit_plan_year_id
      #   Unique benefit-plan-year identifier (plyr\_\*).
      #
      #   @return [String]
      required :benefit_plan_year_id, String

      # @!method initialize(employer_id:, benefit_plan_year_id:, request_options: {})
      #   @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      #   @param benefit_plan_year_id [String] Unique benefit-plan-year identifier (plyr\_\*).
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
