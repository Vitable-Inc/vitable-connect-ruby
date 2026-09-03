# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single employer benefit plan year resource.
    class EmployerBenefitPlanYearResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::BenefitPlanYearDetail }, optional: false, nullable: false
    end
  end
end
