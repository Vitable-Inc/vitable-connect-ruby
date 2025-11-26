# frozen_string_literal: true

require_relative "../test_helper"

class VitablePartnerAPI::Test::Resources::PlanYearsTest < VitablePartnerAPI::Test::ResourceTest
  def test_update
    skip("Prism tests are disabled")

    response = @vitable_connect_api.plan_years.update("plyr__1k--w2KifJ1")

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
end
