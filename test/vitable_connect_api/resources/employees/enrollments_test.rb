# frozen_string_literal: true

require_relative "../../test_helper"

class VitableConnectAPI::Test::Resources::Employees::EnrollmentsTest < VitableConnectAPI::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employees.enrollments.list("empl_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Models::Employees::EnrollmentListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Enrollment]),
        pagination: VitableConnectAPI::Models::Employees::EnrollmentListResponse::Pagination
      }
    end
  end

  def test_submit_elections_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.employees.enrollments.submit_elections(
        "empl_abc123def456",
        elections: [
          {coverage_tier: :EF, decision: :Enrolled, enrollment_id: "enrl_pending123abc"},
          {coverage_tier: :Unspecified, decision: :Waived, enrollment_id: "enrl_pending456def"}
        ]
      )

    assert_pattern do
      response => VitableConnectAPI::Models::Employees::EnrollmentSubmitElectionsResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Enrollment]),
        pagination: VitableConnectAPI::Models::Employees::EnrollmentSubmitElectionsResponse::Pagination
      }
    end
  end
end
