# frozen_string_literal: true

module VitableConnect
  module Types
    module TaxClassification
      extend VitableConnect::Internal::Types::Enum

      UNKNOWN = "Unknown"
      PRE_TAX = "Pre-tax"
      POST_TAX = "Post-tax"
    end
  end
end
