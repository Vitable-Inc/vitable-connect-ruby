# frozen_string_literal: true

module VitableConnect
  module Types
    class EmployerSettings < Internal::Types::Model
      field :pay_frequency, -> { VitableConnect::Types::DeductionFrequency }, optional: false, nullable: true
    end
  end
end
