# frozen_string_literal: true

module VitableConnect
  module Types
    module DeductionFrequency
      extend VitableConnect::Internal::Types::Enum

      WEEKLY = "weekly"
      BI_WEEKLY = "bi_weekly"
      SEMI_MONTHLY = "semi_monthly"
      MONTHLY = "monthly"
    end
  end
end
