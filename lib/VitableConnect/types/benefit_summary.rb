# frozen_string_literal: true

module VitableConnect
  module Types
    class BenefitSummary < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :product_code, -> { VitableConnect::Types::ProductCode }, optional: false, nullable: false

      field :category, -> { VitableConnect::Types::Category }, optional: false, nullable: false
    end
  end
end
