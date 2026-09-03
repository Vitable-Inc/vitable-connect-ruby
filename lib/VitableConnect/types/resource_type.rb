# frozen_string_literal: true

module VitableConnect
  module Types
    module ResourceType
      extend VitableConnect::Internal::Types::Enum

      ENROLLMENT = "enrollment"
      EMPLOYEE = "employee"
      EMPLOYER = "employer"
      DEPENDENT = "dependent"
      PLAN_YEAR = "plan_year"
      PAYROLL_DEDUCTION = "payroll_deduction"
    end
  end
end
