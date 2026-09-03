# frozen_string_literal: true

module VitableConnect
  module Types
    # Paginated list response containing employer payroll deduction statement resources.
    class EmployerPayrollDeductionStatementListResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[VitableConnect::Types::PayrollDeductionStatement] }, optional: false, nullable: false

      field :pagination, -> { VitableConnect::Types::Pagination }, optional: false, nullable: false
    end
  end
end
