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
      response => VitableConnect::Models::EmployeeListEnrollmentsResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Enrollment]),
        pagination: VitableConnect::Pagination
      }
    end
  end
end
