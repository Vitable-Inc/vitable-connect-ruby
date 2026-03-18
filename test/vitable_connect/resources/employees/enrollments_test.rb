# frozen_string_literal: true

require_relative "../../test_helper"

class VitableConnect::Test::Resources::Employees::EnrollmentsTest < VitableConnect::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @vitable_connect.employees.enrollments.list("empl_abc123def456")

    assert_pattern do
      response => VitableConnect::Employees::EnrollmentList
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Enrollment]),
        pagination: VitableConnect::Pagination
      }
    end
  end
end
