# frozen_string_literal: true

require_relative "../../test_helper"

class VitablePartnerAPI::Test::Resources::Employees::EnrollmentsTest < VitablePartnerAPI::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employees.enrollments.list("empl__1k--w2KifJ1")

    assert_pattern do
      response => VitablePartnerAPI::Models::Employees::EnrollmentListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::Enrollment]) | nil
      }
    end
  end

  def test_elect_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.employees.enrollments.elect(
        "empl__1k--w2KifJ1",
        elections: [{decision: :enrolled, enrollment_id: "enrl__1k--w2KifJ1"}]
      )

    assert_pattern do
      response => VitablePartnerAPI::Models::Employees::EnrollmentElectResponse
    end

    assert_pattern do
      response => {
        data: ^(VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::Enrollment]) | nil
      }
    end
  end
end
