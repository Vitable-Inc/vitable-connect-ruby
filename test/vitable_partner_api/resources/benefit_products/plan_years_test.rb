# frozen_string_literal: true

require_relative "../../test_helper"

class VitablePartnerAPI::Test::Resources::BenefitProducts::PlanYearsTest < VitablePartnerAPI::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.benefit_products.plan_years.create(
        "bprd__1k--w2KifJ1",
        coverage_end_date: "2019-12-27",
        coverage_start_date: "2019-12-27",
        employer_id: "empr__1k--w2KifJ1",
        open_enrollment_end_date: "2019-12-27",
        open_enrollment_start_date: "2019-12-27"
      )

    assert_pattern do
      response => VitablePartnerAPI::PlanYear
    end

    assert_pattern do
      response => {
        id: String,
        benefit_product: VitablePartnerAPI::BenefitProduct,
        configured: VitablePartnerAPI::Internal::Type::Boolean,
        coverage_end_date: Date,
        coverage_start_date: Date,
        employer_id: String,
        open_enrollment_end_date: Date,
        open_enrollment_start_date: Date,
        contribution_classes: ^(VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::BenefitProducts::PlanContributionClass]) | nil,
        plan_costs: ^(VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::BenefitProducts::PlanCost]) | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.benefit_products.plan_years.list("bprd__1k--w2KifJ1", employer_id: "employer_id")

    assert_pattern do
      response => VitablePartnerAPI::Models::BenefitProducts::PlanYearListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::PlanYear]) | nil
      }
    end
  end
end
