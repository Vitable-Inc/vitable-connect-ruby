# frozen_string_literal: true

module VitableConnect
  module Employees
    module Types
      class PatchedUpdateEmployeeRequest < Internal::Types::Model
        field :employee_id, -> { String }, optional: false, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :gender, -> { VitableConnect::Types::Gender }, optional: true, nullable: false

        field :address, -> { VitableConnect::Types::EmployeeAddressInput }, optional: true, nullable: false

        field :employee_class, -> { VitableConnect::Types::EmployeeClass }, optional: true, nullable: false

        field :start_date, -> { String }, optional: true, nullable: false

        field :compensation_type, -> { VitableConnect::Types::CompensationType }, optional: true, nullable: false

        field :effective_date, -> { String }, optional: false, nullable: false
      end
    end
  end
end
