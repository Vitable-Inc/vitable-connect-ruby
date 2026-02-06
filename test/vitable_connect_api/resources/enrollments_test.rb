# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnectAPI::Test::Resources::EnrollmentsTest < VitableConnectAPI::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect_api.enrollments.retrieve("enrl_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Models::EnrollmentRetrieveResponse
    end

    assert_pattern do
      response => {
        data: VitableConnectAPI::Enrollment
      }
    end
  end

  def test_list_plans
    skip("Prism tests are disabled")

    response = @vitable_connect_api.enrollments.list_plans("enrl_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Models::EnrollmentListPlansResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Models::EnrollmentListPlansResponse::Data]),
        pagination: VitableConnectAPI::Models::EnrollmentListPlansResponse::Pagination
      }
    end
  end

  def test_reissue_required_params
    skip("Prism tests are disabled")

    response = @vitable_connect_api.enrollments.reissue("enrl_abc123def456", qle_id: "qle_marriage123abc")

    assert_pattern do
      response => VitableConnectAPI::Models::EnrollmentReissueResponse
    end

    assert_pattern do
      response => {
        data: VitableConnectAPI::Enrollment
      }
    end
  end
end
