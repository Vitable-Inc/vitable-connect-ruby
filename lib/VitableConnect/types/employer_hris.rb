# frozen_string_literal: true

module VitableConnect
  module Types
    class EmployerHris < Internal::Types::Model
      field :hris, -> { VitableConnect::Types::HrisConnection }, optional: false, nullable: true
    end
  end
end
