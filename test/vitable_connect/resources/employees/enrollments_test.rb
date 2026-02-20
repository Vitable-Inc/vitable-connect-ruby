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

  def test_submit_elections_required_params
    skip("Mock server tests are disabled")

    response =
      @vitable_connect.employees.enrollments.submit_elections(
        "empl_abc123def456",
        elections: [
          {coverage_tier: :EF, decision: :Enrolled, enrollment_id: "enrl_pending123abc"},
          {coverage_tier: :Unspecified, decision: :Waived, enrollment_id: "enrl_pending456def"}
        ]
      )

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
