# frozen_string_literal: true

require_relative "../../test_helper"

class VitableConnectAPI::Test::Resources::Employees::EnrollmentsTest < VitableConnectAPI::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employees.enrollments.list("empl_abc123def456")

    assert_pattern do
      response => ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Enrollment])
    end
  end

  def test_submit_elections_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.employees.enrollments.submit_elections(
        "empl_abc123def456",
        elections: [{decision: :Enrolled, enrollment_id: "enrollment_id"}]
      )

    assert_pattern do
      response => ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Enrollment])
    end
  end
end
