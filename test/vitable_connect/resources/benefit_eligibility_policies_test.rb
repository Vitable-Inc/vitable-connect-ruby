# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::BenefitEligibilityPoliciesTest < VitableConnect::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect.benefit_eligibility_policies.retrieve("epol_abc123def456")

    assert_pattern do
      response => VitableConnect::BenefitEligibilityPolicy
    end

    assert_pattern do
      response => {
        data: VitableConnect::BenefitEligibilityPolicy::Data
      }
    end
  end
end
