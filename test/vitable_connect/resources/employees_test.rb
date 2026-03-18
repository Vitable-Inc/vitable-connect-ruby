# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::EmployeesTest < VitableConnect::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @vitable_connect.employees.retrieve("empl_abc123def456")

    assert_pattern do
      response => VitableConnect::EmployeeResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Employee
      }
    end
  end
end
