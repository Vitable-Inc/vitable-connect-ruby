# frozen_string_literal: true

require_relative "../../test_helper"

class VitableConnectAPI::Test::Resources::BenefitProducts::PlanYearsTest < VitableConnectAPI::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.benefit_products.plan_years.create(
        "bprd_abc123def456",
        contribution_classes: [
          {
            employee_contribution_cents: 0,
            employer_contribution_cents: 0,
            employment: "employment",
            family_status: :Unspecified
          }
        ],
        coverage_end: "2019-12-27",
        coverage_start: "2019-12-27",
        employer_id: "employer_id",
        open_enrollment_end: "2019-12-27",
        open_enrollment_start: "2019-12-27"
      )

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

  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.benefit_products.plan_years.list("bprd_abc123def456")

    assert_pattern do
      response => ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::BenefitProducts::PlanYear])
    end
  end
end
