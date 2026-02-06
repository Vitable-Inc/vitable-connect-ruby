# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnectAPI::Test::Resources::EmployeesTest < VitableConnectAPI::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employees.retrieve("empl_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Models::EmployeeRetrieveResponse
    end

    assert_pattern do
      response => {
        data: VitableConnectAPI::Employee
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employees.update("empl_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Models::EmployeeUpdateResponse
    end

    assert_pattern do
      response => {
        data: VitableConnectAPI::Employee
      }
    end
  end

  def test_terminate
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employees.terminate("empl_abc123def456")

    assert_pattern do
      response => nil
    end
  end
end
