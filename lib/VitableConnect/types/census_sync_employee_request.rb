# frozen_string_literal: true

module VitableConnect
  module Types
    class CensusSyncEmployeeRequest < Internal::Types::Model
      field :reference_id, -> { String }, optional: true, nullable: false

      field :first_name, -> { String }, optional: false, nullable: false

      field :last_name, -> { String }, optional: false, nullable: false

      field :date_of_birth, -> { String }, optional: false, nullable: false

      field :email, -> { String }, optional: false, nullable: false

      field :phone, -> { String }, optional: true, nullable: false

      field :address, -> { VitableConnect::Types::CensusSyncEmployeeAddressRequest }, optional: true, nullable: false

      field :start_date, -> { String }, optional: true, nullable: false

      field :employee_class, -> { VitableConnect::Types::EmployeeClass }, optional: true, nullable: false

      field :compensation_type, -> { VitableConnect::Types::CompensationType }, optional: true, nullable: false
    end
  end
end
