# frozen_string_literal: true

module VitableConnect
  module Types
    class DeductionDetail < Internal::Types::Model
      field :deduction_category, -> { String }, optional: false, nullable: true

      field :deduction_amount_in_cents, -> { Integer }, optional: false, nullable: false

      field :tax_classification, -> { VitableConnect::Types::TaxClassification }, optional: false, nullable: false

      field :frequency, -> { VitableConnect::Types::DeductionFrequency }, optional: false, nullable: false

      field :benefit_name, -> { String }, optional: false, nullable: false

      field :period_start_date, -> { String }, optional: false, nullable: false

      field :period_end_date, -> { String }, optional: false, nullable: false
    end
  end
end
