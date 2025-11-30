# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnectAPI::Test::Resources::EmployeesTest < VitableConnectAPI::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employees.retrieve("empl_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Employee
    end

    assert_pattern do
      response => {
        id: String,
        active: VitableConnectAPI::Internal::Type::Boolean,
        created_at: Time,
        employer_id: String,
        member: VitableConnectAPI::Employee::Member,
        start_date: Date,
        updated_at: Time,
        address: VitableConnectAPI::Employee::Address | nil,
        employee_class: VitableConnectAPI::Employers::EmployeeClass | nil,
        termination_date: Date | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employees.update("empl_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Employee
    end

    assert_pattern do
      response => {
        id: String,
        active: VitableConnectAPI::Internal::Type::Boolean,
        created_at: Time,
        employer_id: String,
        member: VitableConnectAPI::Employee::Member,
        start_date: Date,
        updated_at: Time,
        address: VitableConnectAPI::Employee::Address | nil,
        employee_class: VitableConnectAPI::Employers::EmployeeClass | nil,
        termination_date: Date | nil
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
