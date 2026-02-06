# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::EmployeesTest < VitableConnect::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

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

  def test_update
    skip("Prism tests are disabled")

    response = @vitable_connect.employees.update("empl_abc123def456")

    assert_pattern do
      response => VitableConnect::EmployeeResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Employee
      }
    end
  end

  def test_terminate
    skip("Prism tests are disabled")

    response = @vitable_connect.employees.terminate("empl_abc123def456")

    assert_pattern do
      response => nil
    end
  end
end
