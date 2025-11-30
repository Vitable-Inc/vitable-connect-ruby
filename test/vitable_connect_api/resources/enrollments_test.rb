# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnectAPI::Test::Resources::EnrollmentsTest < VitableConnectAPI::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect_api.enrollments.retrieve("enrl_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Enrollment
    end

    assert_pattern do
      response => {
        id: String,
        benefit_product_id: String,
        created_at: Time,
        employee_id: String,
        plan_year_id: String,
        status: VitableConnectAPI::Employees::EnrollmentStatus,
        updated_at: Time,
        coverage_end_date: Date | nil,
        coverage_start_date: Date | nil,
        coverage_tier: VitableConnectAPI::CoverageTier | nil,
        decision: String | nil,
        employee_contribution_cents: Integer | nil,
        employer_contribution_cents: Integer | nil,
        enrolled_dependents: ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Enrollment::EnrolledDependent]) | nil,
        selected_plan_id: String | nil,
        selected_plan_name: String | nil
      }
    end
  end

  def test_list_plans
    skip("Prism tests are disabled")

    response = @vitable_connect_api.enrollments.list_plans("enrl_abc123def456")

    assert_pattern do
      response => ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Models::EnrollmentListPlansResponseItem])
    end
  end

  def test_reissue_required_params
    skip("Prism tests are disabled")

    response = @vitable_connect_api.enrollments.reissue("enrl_abc123def456", qle_id: "qle_id")

    assert_pattern do
      response => VitableConnectAPI::Enrollment
    end

    assert_pattern do
      response => {
        id: String,
        benefit_product_id: String,
        created_at: Time,
        employee_id: String,
        plan_year_id: String,
        status: VitableConnectAPI::Employees::EnrollmentStatus,
        updated_at: Time,
        coverage_end_date: Date | nil,
        coverage_start_date: Date | nil,
        coverage_tier: VitableConnectAPI::CoverageTier | nil,
        decision: String | nil,
        employee_contribution_cents: Integer | nil,
        employer_contribution_cents: Integer | nil,
        enrolled_dependents: ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Enrollment::EnrolledDependent]) | nil,
        selected_plan_id: String | nil,
        selected_plan_name: String | nil
      }
    end
  end
end
