# frozen_string_literal: true

module VitableConnect
  module Employees
    module Types
      class GetEmployeesRequest < Internal::Types::Model
        field :employee_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
