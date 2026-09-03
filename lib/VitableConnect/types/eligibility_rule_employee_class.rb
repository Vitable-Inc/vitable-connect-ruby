# frozen_string_literal: true

module VitableConnect
  module Types
    module EligibilityRuleEmployeeClass
      extend VitableConnect::Internal::Types::Enum

      FULL_TIME = "Full Time"
      PART_TIME = "Part Time"
      TEMPORARY = "Temporary"
      INTERN = "Intern"
      SEASONAL = "Seasonal"
      INDIVIDUAL_CONTRACTOR = "Individual Contractor"
      ALL = "All"
    end
  end
end
