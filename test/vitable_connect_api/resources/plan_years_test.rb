# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnectAPI::Test::Resources::PlanYearsTest < VitableConnectAPI::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect_api.plan_years.retrieve("plyr_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::BenefitProducts::PlanYear
    end

    assert_pattern do
      response => {
        id: String,
        benefit_product_id: String,
        contribution_classes: ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::BenefitProducts::PlanYear::ContributionClass]),
        coverage_end: Date,
        coverage_start: Date,
        created_at: Time,
        employer_id: String,
        open_enrollment_end_date: Date,
        open_enrollment_start_date: Date,
        plans: ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::BenefitProducts::PlanYear::Plan]),
        status: VitableConnectAPI::BenefitProducts::PlanYearStatus,
        updated_at: Time
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @vitable_connect_api.plan_years.update("plyr_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::BenefitProducts::PlanYear
    end

    assert_pattern do
      response => {
        id: String,
        benefit_product_id: String,
        contribution_classes: ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::BenefitProducts::PlanYear::ContributionClass]),
        coverage_end: Date,
        coverage_start: Date,
        created_at: Time,
        employer_id: String,
        open_enrollment_end_date: Date,
        open_enrollment_start_date: Date,
        plans: ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::BenefitProducts::PlanYear::Plan]),
        status: VitableConnectAPI::BenefitProducts::PlanYearStatus,
        updated_at: Time
      }
    end
  end
end
