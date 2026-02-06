# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::EnrollmentsTest < VitableConnect::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect.enrollments.retrieve("enrl_abc123def456")

    assert_pattern do
      response => VitableConnect::EnrollmentResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Enrollment
      }
    end
  end

  def test_list_plans
    skip("Prism tests are disabled")

    response = @vitable_connect.enrollments.list_plans("enrl_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::EnrollmentListPlansResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::EnrollmentListPlansResponse::Data]),
        pagination: VitableConnect::Pagination
      }
    end
  end

  def test_reissue_required_params
    skip("Prism tests are disabled")

    response = @vitable_connect.enrollments.reissue("enrl_abc123def456", qle_id: "qle_marriage123abc")

    assert_pattern do
      response => VitableConnect::EnrollmentResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Enrollment
      }
    end
  end
end
