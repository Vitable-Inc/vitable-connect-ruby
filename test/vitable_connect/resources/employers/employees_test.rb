# frozen_string_literal: true

require_relative "../../test_helper"

class VitableConnect::Test::Resources::Employers::EmployeesTest < VitableConnect::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @vitable_connect.employers.employees.create(
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
      response => VitableConnect::EmployeeResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Employee
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @vitable_connect.employers.employees.list("empr_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::Employers::EmployeeListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Employee]),
        pagination: VitableConnect::Pagination
      }
    end
  end
end
