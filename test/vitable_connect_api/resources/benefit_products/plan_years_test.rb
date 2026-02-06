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
            coverage_tier: :EE,
            employee_contribution_cents: 20_000,
            employer_contribution_cents: 45_000,
            employment: "full_time"
          },
          {
            coverage_tier: :EF,
            employee_contribution_cents: 50_000,
            employer_contribution_cents: 60_000,
            employment: "full_time"
          }
        ],
        coverage_end: "2026-12-31",
        coverage_start: "2026-01-01",
        employer_id: "empr_abc123",
        open_enrollment_end: "2025-11-30",
        open_enrollment_start: "2025-10-15"
      )

    assert_pattern do
      response => VitableConnectAPI::Models::BenefitProducts::PlanYearCreateResponse
    end

    assert_pattern do
      response => {
        data: VitableConnectAPI::BenefitProducts::PlanYear
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.benefit_products.plan_years.list("bprd_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Models::BenefitProducts::PlanYearListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::BenefitProducts::PlanYear]),
        pagination: VitableConnectAPI::Models::BenefitProducts::PlanYearListResponse::Pagination
      }
    end
  end
end
