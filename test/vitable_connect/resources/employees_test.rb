# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::EmployeesTest < VitableConnect::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @vitable_connect.employees.retrieve("empl_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::EmployeeRetrieveResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Employee
      }
    end
  end

  def test_list_enrollments
    skip("Mock server tests are disabled")

    response = @vitable_connect.employees.list_enrollments("empl_abc123def456")

    assert_pattern do
      response => VitableConnect::Internal::PageNumberPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => VitableConnect::Enrollment
    end

    assert_pattern do
      row => {
        id: String,
        answered_at: Time | nil,
        benefit: VitableConnect::Enrollment::Benefit,
        coverage_end: Date | nil,
        coverage_start: Date,
        created_at: Time,
        employee_deduction_in_cents: Integer | nil,
        employee_id: String,
        employer_contribution_in_cents: Integer | nil,
        employer_id: String,
        status: VitableConnect::EnrollmentStatus,
        terminated_at: Time | nil,
        updated_at: Time
      }
    end
  end
end
