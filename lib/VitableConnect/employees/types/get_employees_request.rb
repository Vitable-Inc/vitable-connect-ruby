# frozen_string_literal: true

module VitableConnect
  module Employees
    module Types
      class GetEmployeesRequest < Internal::Types::Model
        field :employee_id, -> { String }, optional: false, nullable: false

        field :vitable_organization, -> { String }, optional: true, nullable: false, api_name: "X-Vitable-Organization"
      end
    end
  end
end
