# frozen_string_literal: true

module VitableConnect
  module Employees
    module Types
      class ListEnrollmentsEmployeesRequest < Internal::Types::Model
        field :employee_id, -> { String }, optional: false, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
