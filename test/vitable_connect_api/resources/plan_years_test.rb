# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnectAPI::Test::Resources::PlanYearsTest < VitableConnectAPI::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect_api.plan_years.retrieve("plyr_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Models::PlanYearRetrieveResponse
    end

    assert_pattern do
      response => {
        data: VitableConnectAPI::BenefitProducts::PlanYear
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @vitable_connect_api.plan_years.update("plyr_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Models::PlanYearUpdateResponse
    end

    assert_pattern do
      response => {
        data: VitableConnectAPI::BenefitProducts::PlanYear
      }
    end
  end
end
