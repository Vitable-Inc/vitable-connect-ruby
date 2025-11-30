# frozen_string_literal: true

require_relative "../../test_helper"

class VitableConnectAPI::Test::Resources::Employers::EmployeesTest < VitableConnectAPI::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.employers.employees.create(
        "empr_abc123def456",
        date_of_birth: "2019-12-27",
        email: "dev@stainless.com",
        first_name: "x",
        last_name: "x",
        sex: :Male,
        ssn: "xxxxxxxxx",
        start_date: "2019-12-27"
      )

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

  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employers.employees.list("empr_abc123def456")

    assert_pattern do
      response => ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Employee])
    end
  end
end
