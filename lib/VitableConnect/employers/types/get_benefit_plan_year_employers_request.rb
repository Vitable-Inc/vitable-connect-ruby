# frozen_string_literal: true

module VitableConnect
  module Employers
    module Types
      class GetBenefitPlanYearEmployersRequest < Internal::Types::Model
        field :employer_id, -> { String }, optional: false, nullable: false

        field :benefit_plan_year_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
