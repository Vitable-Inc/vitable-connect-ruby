# frozen_string_literal: true

require_relative "../test_helper"

class VitablePartnerAPI::Test::Resources::EnrollmentsTest < VitablePartnerAPI::Test::ResourceTest
  def test_get_eligible_plans
    skip("Prism tests are disabled")

    response = @vitable_connect_api.enrollments.get_eligible_plans("enrl__1k--w2KifJ1")

    assert_pattern do
      response => VitablePartnerAPI::Models::EnrollmentGetEligiblePlansResponse
    end

    assert_pattern do
      response => {
        data: ^(VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::Plan]) | nil
      }
    end
  end

  def test_reissue_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.enrollments.reissue(
        "enrl__1k--w2KifJ1",
        qualifying_life_event_id: "qle__1k--w2KifJ1"
      )

    assert_pattern do
      response => VitablePartnerAPI::Enrollment
    end

    assert_pattern do
      response => {
        id: String,
        decision: VitablePartnerAPI::Enrollment::Decision,
        employee_id: String,
        plan_year_id: String,
        status: VitablePartnerAPI::Enrollment::Status
      }
    end
  end
end
