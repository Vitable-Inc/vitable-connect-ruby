# frozen_string_literal: true

require_relative "../../test_helper"

class VitableConnect::Test::Resources::Employers::EmployeesTest < VitableConnect::Test::ResourceTest
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
