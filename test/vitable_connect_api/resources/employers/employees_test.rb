# frozen_string_literal: true

require_relative "../../test_helper"

class VitableConnectAPI::Test::Resources::Employers::EmployeesTest < VitableConnectAPI::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.employers.employees.create(
        "empr_abc123def456",
        date_of_birth: "1992-08-25",
        email: "michael.johnson@example.com",
        first_name: "Michael",
        last_name: "Johnson",
        sex: :Male,
        ssn: "123-45-6789",
        start_date: "2024-12-01"
      )

    assert_pattern do
      response => VitableConnectAPI::Models::Employers::EmployeeCreateResponse
    end

    assert_pattern do
      response => {
        data: VitableConnectAPI::Employee
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employers.employees.list("empr_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Models::Employers::EmployeeListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Employee]),
        pagination: VitableConnectAPI::Models::Employers::EmployeeListResponse::Pagination
      }
    end
  end
end
