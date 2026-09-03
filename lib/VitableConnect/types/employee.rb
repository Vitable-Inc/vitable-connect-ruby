# frozen_string_literal: true

module VitableConnect
  module Types
    class Employee < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :member_id, -> { String }, optional: true, nullable: false

      field :employer_id, -> { String }, optional: true, nullable: false

      field :reference_id, -> { String }, optional: true, nullable: false

      field :employer_name, -> { String }, optional: true, nullable: false

      field :first_name, -> { String }, optional: false, nullable: false

      field :last_name, -> { String }, optional: false, nullable: false

      field :suffix, -> { String }, optional: true, nullable: false

      field :email, -> { String }, optional: false, nullable: false

      field :date_of_birth, -> { String }, optional: false, nullable: false

      field :gender, -> { String }, optional: true, nullable: false

      field :phone, -> { String }, optional: true, nullable: false

      field :employee_class, -> { VitableConnect::Types::EmployeeClass }, optional: false, nullable: false

      field :status, -> { VitableConnect::Types::EmployeeStatus }, optional: true, nullable: false

      field :start_date, -> { String }, optional: true, nullable: false

      field :classification_effective_date, -> { String }, optional: true, nullable: false

      field :compensation_type, -> { VitableConnect::Types::CompensationType }, optional: true, nullable: false

      field :compensation_type_effective_date, -> { String }, optional: true, nullable: false

      field :termination_date, -> { String }, optional: true, nullable: false

      field :address, -> { VitableConnect::Types::EmployeeAddress }, optional: true, nullable: false

      field :deductions, -> { Internal::Types::Array[VitableConnect::Types::DeductionDetail] }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
