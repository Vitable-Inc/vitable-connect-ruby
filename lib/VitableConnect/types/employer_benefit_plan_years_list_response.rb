# frozen_string_literal: true

module VitableConnect
  module Types
    class EmployerBenefitPlanYearsListResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[VitableConnect::Types::BenefitPlanYearList] }, optional: false, nullable: false
    end
  end
end
