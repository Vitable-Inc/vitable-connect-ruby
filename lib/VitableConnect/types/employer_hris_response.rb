# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single employer hris resource.
    class EmployerHrisResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::EmployerHris }, optional: false, nullable: false
    end
  end
end
