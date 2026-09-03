# frozen_string_literal: true

module VitableConnect
  module Types
    module Category
      extend VitableConnect::Internal::Types::Enum

      MEDICAL = "Medical"
      DENTAL = "Dental"
      VISION = "Vision"
      HOSPITAL = "Hospital"
    end
  end
end
