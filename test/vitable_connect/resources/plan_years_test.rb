# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::PlanYearsTest < VitableConnect::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @vitable_connect.plan_years.retrieve("plyr_abc123def456")

    assert_pattern do
      response => VitableConnect::BenefitProducts::PlanYearResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::BenefitProducts::PlanYear
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @vitable_connect.plan_years.update("plyr_abc123def456")

    assert_pattern do
      response => VitableConnect::BenefitProducts::PlanYearResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::BenefitProducts::PlanYear
      }
    end
  end
end
