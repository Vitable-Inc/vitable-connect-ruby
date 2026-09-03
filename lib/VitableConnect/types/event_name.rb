# frozen_string_literal: true

module VitableConnect
  module Types
    module EventName
      extend VitableConnect::Internal::Types::Enum

      ENROLLMENT_ACCEPTED = "enrollment.accepted"
      ENROLLMENT_TERMINATED = "enrollment.terminated"
      ENROLLMENT_TERMINATION_RESCHEDULED = "enrollment.termination_rescheduled"
      ENROLLMENT_ELECTED = "enrollment.elected"
      ENROLLMENT_GRANTED = "enrollment.granted"
      ENROLLMENT_WAIVED = "enrollment.waived"
      ENROLLMENT_STARTED = "enrollment.started"
      EMPLOYEE_ELIGIBILITY_GRANTED = "employee.eligibility_granted"
      EMPLOYEE_ELIGIBILITY_TERMINATED = "employee.eligibility_terminated"
      EMPLOYEE_DEACTIVATED = "employee.deactivated"
      EMPLOYEE_DEDUCTION_CREATED = "employee.deduction_created"
    end
  end
end
