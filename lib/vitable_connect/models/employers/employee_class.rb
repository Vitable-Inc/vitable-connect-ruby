# frozen_string_literal: true

module VitableConnect
  module Models
    module Employers
      # - `Full Time` - Full Time
      # - `Part Time` - Part Time
      # - `Temporary` - Temporary
      # - `Intern` - Intern
      # - `Seasonal` - Seasonal
      # - `Individual Contractor` - Individual Contractor
      module EmployeeClass
        extend VitableConnect::Internal::Type::Enum

        FULL_TIME = :"Full Time"
        PART_TIME = :"Part Time"
        TEMPORARY = :Temporary
        INTERN = :Intern
        SEASONAL = :Seasonal
        INDIVIDUAL_CONTRACTOR = :"Individual Contractor"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
